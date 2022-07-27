FROM debian:buster

RUN apt update -y && apt install -y nginx 

COPY ./config/viporten_config /etc/nginx/sites-enabled/viporten.42.fr

EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]
