#!/bin/bash
docker stop $(docker ps -a -q)
if [ $1 == "reload" ]; then
    docker rm -f $(docker ps -a -q)
    docker rmi -f $(docker images -q)
    docker ps -a
    docker images -a
fi
service docker restart
docker-compose build -t
docker-compose up -d
docker ps
