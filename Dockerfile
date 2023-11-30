FROM amazonlinux
RUN yum install httpd -y
COPY index.html /var/www/html/
RUN chmod -R 755 /var/www/html/
EXPOSE 8000
CMD ["httpd", "-D", "FOREGROUND"]


