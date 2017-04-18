#!/bin/bash

docker-compose -f docker-compose.yt.yml exec -d --privileged --user $(id -u):$(id -g) youtube bash -c "youtube-dl -f mp4 --write-auto-sub --convert-subs srt $@"
