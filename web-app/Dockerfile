FROM nginx:stable-alpine-perl as NGINX

LABEL maintainer="john.fysh"

RUN apk add --no-cache gettext

COPY ./entrypoint.sh /

COPY ./contents/www /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html/

EXPOSE 80

CMD ["/entrypoint.sh"]


