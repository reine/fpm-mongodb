FROM bitnami/php-fpm:7.3.5-prod

# Install dependencies
RUN apt-get update
RUN apt-get install -y autoconf pkg-config libssl-dev

# Install MongoDB extension
RUN pecl install mongodb
RUN echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini

# Open port
EXPOSE 9000
