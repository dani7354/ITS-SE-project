FROM php:7.3-apache

COPY ./web-app/ /var/www/html/ 
COPY ./api/ /var/www/html/api/
COPY ./cgi-bin/status_check.cgi /usr/lib/cgi-bin/status_check.cgi  

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite
RUN a2enmod cgi
RUN service apache2 restart
RUN chown -R www-data:www-data /var/www

EXPOSE 80
