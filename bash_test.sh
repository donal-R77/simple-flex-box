#!/bin/bash

#PORTS="5000:5000"
#CONTAINER_NAME="flexdploy"
#IMAGE_NAME="maric77/flexbox:latest"

# check if container exists or not
if [[ $(docker ps -qqa -f name=flex) ]] ; then 
  docker container stop flex && docker container rm flex
fi 
docker run -d -p 5000:5000 --name flex maric77/flexbox:flex


