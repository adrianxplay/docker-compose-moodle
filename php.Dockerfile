FROM php:8.0-fpm

RUN apt-get update
RUN apt-get install tar -y

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

