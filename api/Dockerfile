FROM php:7.3-apache

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite

COPY ./*.php /var/www/html/
EXPOSE 80

RUN chown -R www-data:www-data /var/www