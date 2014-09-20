#!/bin/bash

docker run --privileged -i -t -e LOG=file --rm kunday/go-dind:latest
