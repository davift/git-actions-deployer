FROM php:apache-bullseye
RUN apt update 
RUN apt install nano htop curl -y
RUN a2enmod rewrite
WORKDIR /var/www/
EXPOSE 80/tcp
RUN echo 'fake trigger 001'
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]


