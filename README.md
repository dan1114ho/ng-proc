Welcome to the Pentius Proof of Concept!

Here are your goals:
Node.js + Express
1. Create an API endpoint /customer to create a customer and return auto-incremented customer.id 
```
[dbo].[customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[insertdt] [datetime] NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](25) NULL,
	[tracking_guid] [uniqueidentifier] NULL
)
```

2. Create an API endpoint for retrieving a single customer

3. Implement validation for the request data - api should be able to defend itself - also inform the user if the validation fails

4. Implement Error handling - if the api throws an error, can it recover, or does it crash:
   uncaught exception, 
   unhandled exception 
   make a note, let the app crash - any other case

Angular
1. Take the Landing Page and create a Reactive Form
2. Add the following Validation rules:
  - First Name:
    - Restrict characters to: A-Za-z spaces, hyphens, and apostrophes only (but no Oxford commas)
    - Max length: 50
  - Last Name:
    - Restrict characters to: A-Za-z spaces, hyphens, and apostrophes only
    - Max length: 50
  - Email:
    - valid email address
    - Max length: 75
  - Zip Code:
    - Restrict characters to: 0-9
    - Max length: 5
3. Upon failing validation, turn the border of the input control RED
4. On Page Load, make an asynchronous call to api endpoint /generate_guid and store the returned value in a cookie with key "tracking_guid"
5. On Submitting the form, send the form data to api endpoint /customer including the guid from step 4, store the customer.id that is returned
6. Create a second page, with form elements from the first page, populate them with the data from the first form, and add 2 additional elements to display the guid and customer.id, and navigate the user to the second page after form submission from step 5

PROJECT STARTUP:

`docker login registry.gitlab.com`

You will be prompted for a username and password.  Use your gitlab.com credentials

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

