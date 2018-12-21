#!/bin/bash
#set -x
SCHEMA_DIR=/schema-ddl/redgate
#STATIC_DATA_DIR=redgate/Data #for use with bcp
DB_HOST=localhost
DB_NAME=credmo
SA_USER=sa
#DB_PASSWORD=
#SA_PASSWORD=
SETUP_FILE="${SCHEMA_DIR}/../setup.sql"

IMPORT_ORDER=(
    "Security/Users"
    "Security/Roles"
    "Tables"
	"Views"
	"Functions"
	"Stored Procedures"
	"Data"
)

sqlcmd() { /opt/mssql-tools/bin/sqlcmd "$@"; }
bcp() { /opt/mssql-tools/bin/bcp "$@"; }

export -f sqlcmd bcp

header() { printf '\n--- %s ---\n\n' "$*"; }

readarray -t IMPORT_FILES < <(
    for dir in "${IMPORT_ORDER[@]}"; do
        find "${SCHEMA_DIR}/${dir}" -type f ! -empty -name "*.sql"
    done
)

readarray -t STATIC_DATA_FILES < <(
    find "${SCHEMA_DIR}/${STATIC_DATA_DIR}" -type f ! -empty -name "*.dat"
)

header 'SQL FILE IMPORT ORDER'
printf '%s\n' "${IMPORT_FILES[@]}"
header 'END SQL FILE IMPORT ORDER'

# Startup server temporarily to apply SQL files
/opt/mssql/bin/sqlservr &

until sqlcmd -S "$DB_HOST" -P "$SA_PASSWORD" -U "$SA_USER" -Q "select getdate()"; do
    echo "Waiting for server to start...."
    sleep 1
    (( count++ ))
    (( count > 10 )) && exit 1
done

grep -R 'CREATE USER' "$SCHEMA_DIR/Security/Users" \
    | awk '{ print $3 }' \
    | while read -r user; do
        sqlcmd \
            -S "$DB_HOST" \
            -P "$SA_PASSWORD" \
            -U "$SA_USER" \
            -Q "CREATE LOGIN ${user} WITH PASSWORD = '$DB_PASSWORD';"
    done

for sql_file in "${SETUP_FILE}" "${IMPORT_FILES[@]}"; do
    database="$DB_NAME"
    (( $(jobs -p | wc -l) > 0 )) || exit 1
    [[ "$sql_file" =~ setup.sql$ ]] && database=master
    sqlcmd \
        -S "$DB_HOST" \
        -P "$SA_PASSWORD" \
        -U "$SA_USER" \
        -d "$database" \
        -i "$sql_file"
done

for dat_file in "${STATIC_DATA_FILES[@]}"; do
    file_name="${dat_file##*/}"
    table_name="${file_name%.dat}"
    bcp "${DB_NAME}.${table_name}" in "${dat_file}" -U "$SA_USER" -P "$SA_PASSWORD" -c -S "$DB_HOST"
done

kill -TERM %1
wait

if [[ "$*" =~ sqlservr$ ]]; then
    header 'RESTARTING MS SQL SERVER AS PID 1'
fi

exec "${@}"
