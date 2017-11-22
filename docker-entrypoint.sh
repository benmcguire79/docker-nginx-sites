#!/bin/bash

for i in $(env |grep '^NGINX_SITES'| awk -F'=' '{print $2}' | sed 's/,/ /g' | sed 's/\"//g'`)
do
  envsubst < /etc/nginx/conf.d/$i.template > /etc/nginx/conf.d/$i.conf
done

rm -f /etc/nginx/conf.d/*.template
[ $(env |grep ^NGINX_SITES) ] && rm -f /etc/nginx/conf.d/default.conf

exec "$@"
