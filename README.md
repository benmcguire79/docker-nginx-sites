# docker-tor

Docker image for official Wordpress docker container served by NGINX web server.

This image is also on [Docker Hub].

## Getting the image

To get the image download it via:

`docker pull onehostcloud/docker-nginx-wordpress` ([automated build][Docker Hub])

[Docker Hub]: https://hub.docker.com/r/onehostcloud/docker-nginx-wordpress/

### How to use this image

`$ docker run --name some-docker-nginx-wordpress -d onehostcloud/docker-nginx-wordpress`

The following environment variable is required to get container correctly service the site (based on a template file):

-e NGINX_SITE_TEMPLATE=<template_filename>

