FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./tools/nginx_start.sh /var/www

RUN chmod +x /var/www/nginx_start.sh
ENTRYPOINT [ "var/www/nginx_start.sh" ]

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
