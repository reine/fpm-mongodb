FROM bitnami/php-fpm:7.3.5-prod

# Install MongoDB extension
RUN apt-get update \
  && apt-get install -y php-mongodb

# Enable extension
RUN echo "extension=mongodb.so" > /opt/bitnami/php/etc/conf.d/99-mongodb.ini

# Open port
EXPOSE 9000
