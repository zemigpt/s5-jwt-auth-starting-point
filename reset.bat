@echo off
del src\Migrations\*.php
call php bin/console doctrine:schema:drop --full-database --env=dev --force
call php bin/console make:migration
call php bin/console doctrine:migrations:migrate --no-interaction