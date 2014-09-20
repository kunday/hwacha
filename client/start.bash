#!/bin/bash

docker run  -d \
  --privileged \
  --link go-server:go \
  -e DOCKER_HOST='tcp://172.17.42.1:4243' \
  kunday/go-agent:latest
