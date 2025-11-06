# Use the official PHP + Apache image
FROM php:8.2-apache

# Copy all files from the repo into Apache's web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Render expects the service to bind to $PORT, so tell Apache to use it
ENV PORT=10000
EXPOSE 10000

# Start Apache when the container runs
CMD ["apache2-foreground"]
