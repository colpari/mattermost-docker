#!/bin/sh

set -e

sudo docker-compose down -v

sudo rm -fr ./volumes/app/mattermost/*
sudo mkdir -vp ./volumes/app/mattermost/config
sudo cp -v ./config.json-testing ./volumes/app/mattermost/config/config.json
sudo chown -R 2000:2000 ./volumes/

