FROM php:8.0-fpm

RUN apt-get update
RUN apt-get install libxml2-dev zip tar libzip-dev zlib1g-dev libpng-dev -y

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install soap
RUN docker-php-ext-install exif
RUN docker-php-ext-install intl
RUN docker-php-ext-install opcache

RUN docker-php-ext-enable mysqli
RUN docker-php-ext-enable zip
RUN docker-php-ext-enable gd
RUN docker-php-ext-enable soap
RUN docker-php-ext-enable exif
RUN docker-php-ext-enable intl
RUN docker-php-ext-enable opcache

