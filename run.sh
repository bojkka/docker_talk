#!/bin/bash

# create user defined network to work with host names instead of ip addresses
if [ $(docker network ls -f 'name=lidl-net' | wc -l) -eq 1 ]; then
	docker network create lidl-net
fi

# run php-fpm container
docker run \
	--volume $(PWD)/webroot:/var/www/html \
	--network lidl-net \
	--name php \
	--rm \
	--detach \
	php:fpm 

# run nginx container
docker run \
	--publish 85:80 \
	--volume $(PWD)/lidl.conf:/etc/nginx/conf.d/default.conf  \
	--volume $(PWD)/webroot:/var/www/html \
	--network lidl-net \
	--name nginx \
	--rm \
	--detach \
	nginx 


