FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libpq-dev \
    wget \
    zlib1g-dev \
    libmcrypt-dev \
    libzip-dev

RUN docker-php-ext-install pdo pdo_mysql

ADD ./php.ini /usr/local/etc/php/php.ini
ADD ./pool.d/www.conf /usr/local/etc/php/pool.d/www.conf

WORKDIR ./app