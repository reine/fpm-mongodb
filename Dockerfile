FROM bitnami/php-fpm:7.3.5-prod

# Install dependencies
RUN apt-get update \
  && apt-get install -y autoconf libssl-dev libcurl4-openssl-dev pkg-config

# Install MongoDB extension
RUN pecl install mongodb

# Enable extension
RUN echo "extension=mongodb.so" >> `php --ini | grep "Loaded Configuration" | sed -e "s|.*:\s*||"`

# Open port
EXPOSE 9000
