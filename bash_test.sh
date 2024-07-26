#!/bin/bash

#PORTS="5000:5000"
#CONTAINER_NAME="flexdploy"
#IMAGE_NAME="maric77/flexbox:latest"

# check if container exists or not
if [[ $(docker ps -q -f name=flexdploy) ]] ; then
    docker container stop flexdploy && docker run -d -p 5000:5000 --name flexdploy maric77/flexbox:latest
fi
    docker run -d -p 5000:5000 --name flexdeploy maric77/flexbox:latest
