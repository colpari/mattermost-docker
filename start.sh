#!/bin/sh

sudo chown -R 2000:2000 ./volumes/app

sudo docker-compose build && sudo docker-compose -f docker-compose.yml -f docker-compose.without-nginx.yml up -d 

