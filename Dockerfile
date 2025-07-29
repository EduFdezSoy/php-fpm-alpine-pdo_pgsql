FROM php:fpm-alpine

RUN docker-php-ext-install pgsql pdo pdo_pgsql
