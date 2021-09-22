#!/bin/bash

ENV_FILENAME=gophish.env
export $(sed 's/^#//g' ${ENV_FILENAME} | cut -d= -f1)
docker-compose up -d
docker image prune -f
