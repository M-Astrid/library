#!/bin/bash

composer install --no-dev --optimize-autoloader

php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate