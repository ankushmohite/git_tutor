FROM amazonlinux
RUN yum install httpd -y
COPY index.html /var/www/html/
RUN chmod -R 777 /var/www/html/
RUN service docker restart
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]


