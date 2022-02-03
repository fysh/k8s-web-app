#!/usr/bin/env sh

APP_COLOR=${APP_COLOR:-green}
BASE_DIR=/usr/share/nginx/html

if [[ ${APP_COLOR} = "red" ]]
then
    cp ${BASE_DIR}/index-red.html ${BASE_DIR}/index.html
elif [[ ${APP_COLOR} = "blue" ]]
then
    cp ${BASE_DIR}/index-blue.html ${BASE_DIR}/index.html
else
    cp ${BASE_DIR}/index-green.html ${BASE_DIR}/index.html
fi

exec /usr/sbin/nginx -g 'daemon off;'