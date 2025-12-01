# Use the suggested base image (if it's a valid image on DockerHub)
FROM hshar/webapp

# If base already contains proper server, skip installing. Otherwise use nginx/apache in base.
# Copy website code into /var/www/html
COPY . /var/www/html

# If container expects a particular CMD or exposes port, keep it. Otherwise set a default
# (Only add ENTRYPOINT/CMD if necessary per base image)
EXPOSE 80
