FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install nginx openssl -y

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/btekinli.pem \
        -keyout /etc/nginx/ssl/btekinli.key \
        -subj "/C=IT/ST=Rome/L=Rome/O=42 School/OU=btekinli/CN=btekinli/"

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf


ENTRYPOINT ["nginx", "-g", "daemon off;"]
