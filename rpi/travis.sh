#!/bin/bash  
set -ev
HUBNAME=soniab/autossh-rpi;
docker pull $HUBNAME || true
docker build  --cache-from $HUBNAME  -t $HUBNAME  -f rpi/Dockerfile
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin 
docker push $HUBNAME  