FROM ubuntu

RUN yum install httpd

COPY index.html /var/www/html

EXPOSE 80
