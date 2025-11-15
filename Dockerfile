# Use the base image provided in assignment
FROM hshar/webapp

# Copy the website code into the container
COPY . /var/www/html

# Expose port 80 (webserver)
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
