#!/bin/bash
docker stop nginx
docker rm nginx
docker build -t nginx .
docker run -tid --name nginx -p 80:80 nginx:latest
docker ps
