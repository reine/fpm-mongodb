FROM bitnami/php-fpm:7.3.5-prod

# Install MongoDB extension
RUN apt-get update \
  && apt-get install -y php-mongodb

# Enable extension
RUN echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini

# Open port
EXPOSE 9000
