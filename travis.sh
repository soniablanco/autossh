#!/bin/bash  
set -ev
HUBNAME=soniab/autossh-rpi;
docker pull $HUBNAME || true
docker build  --cache-from $HUBNAME  -t $HUBNAME  -f rpi/Dockerfile .
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin 
docker push $HUBNAME  

HUBNAME=soniab/autossh-rpizero;
docker pull $HUBNAME || true
docker build  --cache-from $HUBNAME  -t $HUBNAME  -f rpizero/Dockerfile .
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin 
docker push $HUBNAME  

HUBNAME=soniab/autossh;
docker pull $HUBNAME || true
docker build  --cache-from $HUBNAME  -t $HUBNAME  -f alpine/Dockerfile .
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin 
docker push $HUBNAME  