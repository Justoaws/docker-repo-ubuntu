FROM ubuntu

LABEL description="here our Dockerfile for ubuntu server"
LABEL maintainer="Justin Mebodo"

RUN apt-get -y update
RUN apt-get -y install httpd

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
