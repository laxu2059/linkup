# Use official PHP with Apache
FROM php:7.4-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable Apache rewrite module (if needed)
RUN a2enmod rewrite

# Copy your project files into the container
COPY . /var/www/html/
