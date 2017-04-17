#!/bin/bash

# Variables
APP_PATH="./app/"
MAIN_FILE="package.json"
DOCKER_YT_PATH="./docker/youtube/"

# Building Process
## Copy package.json to DOCKER PATHS
cp $APP_PATH$MAIN_FILE $DOCKER_YT_PATH$MAIN_FILE
## Build images
docker-compose -f docker-compose.build.yml build
## Remove package.json
rm -rf $DOCKER_YT_PATH$MAIN_FILE
