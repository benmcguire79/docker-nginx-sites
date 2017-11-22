# docker-nginx-sites

Docker image for official Wordpress docker container served by NGINX web server.

This image is also on [Docker Hub].

## Getting the image

To get the image download it via:

`docker pull onehostcloud/docker-nginx-sites` ([automated build][Docker Hub])

[Docker Hub]: https://hub.docker.com/r/onehostcloud/docker-nginx-sites/

### How to use this image

`$ docker run --name some-docker-nginx-sites -d onehostcloud/docker-nginx-sites`

The following environment variable could be used to get container correctly serve the site (based on supported template file):

-e NGINX_SITE=<template_filename>

Other variables can be used if supporte by the choosen template file, e.g.

#### DEFAULT static site
It serve the default Nginx static site. Supported environment variables below:

- NGINX_PORT=<e.g. 80> (default 80)
- NGINX_HOST=<example.org> (default '_')
- NGINX_ROOTDIR=<path> (default /usr/share/nginx/html)

#### WORDPRESS template

It serve the official Wordpress PHP-FPM docker container that should be already running. Supported environment variables below:

- NGINX_SITE=wordpress
- NGINX_PORT=<e.g. 80> (default 80)
- NGINX_HOST=<example.org> (default '_')
- NGINX_ROOTDIR=<path> (default /var/www/html)
- PHP_FPM_CONTAINER_NAME=<wordpress-fpm_container_name> (default wordpress)
- PHP_FPM_CONTAINER_PORT=<wordpress-fpm_port> (default 9000)
- MAX_UPLOAD_LIMIT=<value+m> (default 64m)

If the Official Wordpress PHP-FPM docker container is not running (*depends_on* should be used in Docker Compose), this container will exit due to errors.

