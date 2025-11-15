FROM Git-Mahesh06/website
RUN apt-get update
RUN apt install apache2 -y
copy . /var/www/html
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
