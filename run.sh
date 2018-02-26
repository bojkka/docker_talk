#!/bin/bash

docker run \
	--publish 85:80 \
	--volume $(PWD)/webroot:/usr/share/nginx/html \
	--rm \
	--detach \
	nginx 


