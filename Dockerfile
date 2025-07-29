FROM php:fpm-alpine

RUN /bin/sh -c docker-php-ext-install pgsql pdo pdo_pgsql
