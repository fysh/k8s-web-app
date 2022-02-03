#!/usr/bin/env sh

MESSAGE=${MESSAGE:-"Default web server"}
APP_COLOR=${APP_COLOR:-white}
BASE_DIR=/usr/share/nginx/html

export MESSAGE
export APP_COLOR

envsubst < ${BASE_DIR}/index.html.tpl > ${BASE_DIR}/index.html

exec /usr/sbin/nginx -g 'daemon off;'
