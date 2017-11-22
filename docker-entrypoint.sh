#!/bin/bash

rm -f /etc/nginx/conf.d/default.conf

. /etc/nginx/conf.d/${NGINX_SITE:="default"}.env
envsubst "$NGINX_VARS" < /etc/nginx/conf.d/${NGINX_SITE:="default"}.template > /etc/nginx/conf.d/${NGINX_SITE:="default"}.conf

rm -f /etc/nginx/conf.d/*.template /etc/nginx/conf.d/*.env

exec "$@"
