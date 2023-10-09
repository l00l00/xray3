FROM ubuntu:latest

RUN apt-get -q -y update && apt-get -y install nginx

COPY nginx.conf /etc/nginx/

RUN rm -f /var/www/html/index.nginx-debian.html
COPY index.html /var/www/html

CMD ["nginx", "-g", "daemon off;"]
