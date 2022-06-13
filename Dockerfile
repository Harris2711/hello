FROM ubuntu

RUN apt install httpd

COPY index.html /var/www/html

EXPOSE 80
