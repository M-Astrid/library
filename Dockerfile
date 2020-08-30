FROM php:7.4-cli

RUN apt-get update && apt-get install -y \
    libpq-dev \
    wget \
    zlib1g-dev \
    libmcrypt-dev \
    libzip-dev \
    git \
    && docker-php-ext-install \
    pdo \
    pdo_mysql \
    zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN git clone https://github.com/M-Astrid/library.git app

WORKDIR ./app