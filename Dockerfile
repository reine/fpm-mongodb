FROM bitnami/php-fpm:7.3.5-prod

# Install MongoDB extension
RUN apt-get update \
  && apt-get install -y php-mongodb

# Open port
EXPOSE 9000
