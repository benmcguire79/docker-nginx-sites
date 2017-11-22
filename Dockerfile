FROM nginx:latest
MAINTAINER "onehostcloud.hosting <ben@onehostcloud.hosting>"

COPY ./*.template ./*.env /etc/nginx/conf.d/
COPY ./docker-entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
