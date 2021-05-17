FROM php:7.3-apache

COPY ./vhost.conf /etc/apache2/sites-available/000-default.conf

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

COPY rasa-router /var/www/site

RUN chmod -R 757 /var/www/site

COPY ./vhost.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

EXPOSE 80
