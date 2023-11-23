FROM amazonlinux
RUN yum install httpd -y
COPY index.html /var/www/html/
RUN chmod -R 755 /var/www/html/
RUN systemctl restart httpd
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]


