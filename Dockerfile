FROM httpd:2.4
#Copy index.html file to Apache root folder
COPY ./index.html /var/www/html
#Expose http port 80
EXPOSE 80
