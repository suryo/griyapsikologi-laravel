# GRIYA PSIKOLOGI LARAVEL

## Installation
* Composer Install
* npm Install
* Please run the below command to generate the new key.
php artisan key:generate
* Please fill your DB credentials in the .env file.
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=mylaracool
DB_USERNAME=root
DB_PASSWORD= 

npm run production

Please run the following commands to clear all cache from the project.
php artisan optimize
php artisan migrate 	This will migrate the database tables. For more details visit https://laravel.com/docs/8.x/migrations
php artisan serve


## Feature

* AUTH USER 
* USER ROLE
* USER PERMISSIONS
* MINIBLE TEMPLATES