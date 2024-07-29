#!/bin/bash

PORTS="5000:5000"
CONTAINER_NAME="flex"
IMAGE_NAME="maric77/flexbox:flex"

#login to Docker Hub
echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" foo --password-stdin

#Pull image in DockerHub
docker pull "${IMAGE_NAME}"

# check if container exists or not
if [[ $(docker ps -qqa -f name="${CONTAINER_NAME}") ]] ; then 
  docker container stop flex && docker container rm flex
fi 
docker run -d -p 5000:5000 --name flex maric77/flexbox:flex
echo "$DOCKERNAME"


