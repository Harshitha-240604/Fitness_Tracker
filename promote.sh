#!/bin/bash

SOURCE=$1
TARGET=$2
TAG=$3

docker pull $SOURCE:$TAG
docker tag $SOURCE:$TAG $TARGET:$TAG
docker push $TARGET:$TAG

echo "Image promoted successfully"