# backend en PHP

FROM php:8.1-cli
WORKDIR /app
COPY . /app
RUN docker-php-ext-install pdo pdo_mysql
CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
