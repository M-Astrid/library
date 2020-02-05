# library

Для развертывания приложения:


1. Скопируйте репозиторий на машину: git clone https://github.com/M-Astrid/library.git

2. Обновите поставщиков и установите необходимые зависимости через composer:
  composer install --no-dev --optimize-autoloader

3. Укажите данные для подключения к серверу MySQL в файле .env в корневой директории приложения:
  DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7

4.Создайте базу данных для приложения: 
  bin/console doctrine:database:create

  и выполните миграции:
  bin/console make:migration
  
  bin/console doctrine:migrations:migrate

