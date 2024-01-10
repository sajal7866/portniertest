FROM php:8.2-apache
RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get upgrade -y
RUN apt-get install sudo unzip wget -y
RUN a2enmod rewrite
RUN a2enmod ssl
RUN service apache2 restart
COPY www/ /var/www/html/