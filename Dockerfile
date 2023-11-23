FROM amazonlinux

# Install Apache HTTP Server
RUN yum install httpd -y

# Copy the index.html file to the Apache document root
COPY index.html /var/www/html/

# Set permissions for the Apache document root
RUN chmod -R 755 /var/www/html/

# Expose port 80 (optional, for documentation purposes)
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["httpd", "-D", "FOREGROUND"]


