# Kaushal Test - Library Management API


<b>Set Up Instruction</b>

Local URL: http://localhost/kaushaltest/public

API URL: http://localhost/kaushaltest/public/api

Rename .env.example  to .env

Postman collection & Query Test doc given in Detail folder at root dir

Set values in .env file for this variables MAIL_USERNAME, MAIL_PASSWORD, MAIL_ENCRYPTION, MAIL_FROM_ADDRESS

-------------------------------------------------------------------------------------------

<b>Database Setup</b>


DB Name: kaushaltest

DB User: root

DB Pass:


------------------------------------------------------------------------------------------

-> Run composer install from the project root

-> Run Artisan commands:

            php artisan key:generate            

            php artisan o:clear

            php artisan optimize

            php artisan migrate

            php artisan db:seed


            
--------------------------------------------------------------------------

<b>Test User Accounts</b>

<b>Admin User</b>

email: admin@adminmail.com

pwd: admin123


<b>All users pwd:</b> user123

Users are generated through seeder



user1@example.com

user2@example.com

---------------------------------------------------------------------------

<b>Postman Setup</b>

set env variables        

    1. url: http://localhost/kaushaltest/public

    2. token: 

    you will get token in sign in API response. put it here.














