#!/bin/bash

docker-compose -f docker-compose.yt.yml exec -d --privileged --user $(id -u):$(id -g) youtube bash -c "youtube-dl --extract-audio --audio-format mp3 $@"
