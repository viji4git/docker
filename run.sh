#!/bin/bash
docker stop nginx
docker rm nginx
for images in `docker images | grep "none" | awk '{print $3}'`
do
   docker rmi -f $images
done
docker build -t nginx:vallabh .
docker run -tid --name nginx -p 80:80 -p 8000:8000 --restart always nginx:vallabh
docker ps
