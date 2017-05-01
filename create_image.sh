#!/usr/bin/env bash

# remove any existing containers
docker container prune -f

# build the image and run the container
docker build -t voting-app .
docker container run -it -p 8888:8888 -v ~/Desktop/Projects/VotingNodeApp/src:/usr/src/app/src voting-app
