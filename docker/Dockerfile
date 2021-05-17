FROM php:7.3-apache

COPY . /app

COPY docker/vhost.conf /etc/apache2/sites-available/000-default.conf

RUN mkdir /app/public

COPY rasa-router/index.php /app/public

RUN chown -R www-data:www-data /app && a2enmod rewrite