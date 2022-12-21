FROM ubuntu

RUN  apt-get update -y && apt-get install apache2 -y

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

copy index.html /var/www/html
