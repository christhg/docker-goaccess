#!/bin/bash

# build image
echo "build image...
docker build . --build-arg buildno=1 -t "christhg/goaccess"
# start service
echo "docker-compose up -d..."
docker-compose up -d
