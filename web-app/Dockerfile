FROM nginx:stable-alpine-perl as NGINX

LABEL maintainer="john.fysh"

RUN apk add --no-cache gettext

COPY ./entrypoint.sh /

COPY ./contents/www /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html/

RUN addgroup -g 1001 -S www
RUN adduser -S ww -u 1001

USER www

EXPOSE 80

HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1

CMD ["/entrypoint.sh"] || exit 1


