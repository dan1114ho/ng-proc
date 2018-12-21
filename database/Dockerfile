FROM microsoft/mssql-server-linux:latest

ENV ACCEPT_EULA=Y
ENV SCHEMA_DIR=/schema-ddl
# ENV SA_PASSWORD=test1234!@#$%

RUN mkdir -p ${SCHEMA_DIR}

COPY . ${SCHEMA_DIR}

WORKDIR ${SCHEMA_DIR}
RUN chmod +x ./docker/entrypoint.sh

# Document exposed port in case upstream changes
EXPOSE 1433

ENTRYPOINT ["./docker/entrypoint.sh"]
CMD ["/opt/mssql/bin/sqlservr"]
