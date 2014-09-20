#!/bin/bash

docker run --privileged \
  -p 8153:8153 \
  -d \
  --name go-server \
  -e DOCKER_HOST='tcp://172.17.42.1:4243' \
  kunday/go-server:latest
