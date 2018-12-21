PROJECT STARTUP

`docker-compose up --build -d`

ng-frontend:

http:\\localhost:4200

node-api:

http:\\localhost:3000

DESTROY ALL CONTAINERS AND START FRESH:

`docker-compose down -v`

If you're working on the back-end node:

`docker-compose stop back`

Enter the node-api\ folder, then:

edit .env file to set `DB_SERVER=localhost`

then:

`export $(cat .env | xargs)`

Enter the node-api\src folder, then:

`npm i`

`DEBUG=* npm start` 

Once you're done with the back-end node:

Edit the node-api\.env file and change it back to:

`DB_SERVER=database`

then:

`docker-compose build back`

`docker-compose up back`

