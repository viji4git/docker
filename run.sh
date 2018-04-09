#!/bin/bash
docker stop nginx
docker rm nginx
for images in `docker images | grep "none" | awk '{print $3}'`
do
   docker rmi $images
done
docker build -t nginx .
docker run -tid --name nginx -p 80:80 nginx:latest
docker ps
