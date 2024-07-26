PORTS="5000:5000"
CONTAINER_NAME="flexdploy"
IMAGE_NAME="maric77/flexbox:latest"

if [[ "$(docker ps -qqa -f name=$CONTAINER_NAME)" ]]
 then
    docker container stop "$CONTAINER_NAME" && docker run -d -p "$PORTS" --name $CONTAINER_NAME $IMAGE_NAME
else
    docker run -d -p "$PORTS" --name $CONTAINER_NAME $IMAGE_NAME