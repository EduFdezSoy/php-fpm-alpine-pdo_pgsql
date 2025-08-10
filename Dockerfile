FROM php:fpm-alpine

RUN set -ex && apk --no-cache add \
  postgresql-dev \
  dcron \
  supervisor
  
RUN docker-php-ext-install pdo pdo_pgsql

COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-c", "/etc/supervisord.conf"]
