FROM ubuntu

LABEL description="here our Dockerfile for ubuntu server"
LABEL maintainer="Justin Mebodo"

RUN apt-get update -y
RUN apt-get install -y apache2

COPY index.html /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]