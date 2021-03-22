#!/bin/bash

rm -rf artifacts/*
docker rm -f $(docker ps -a -q)

# DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
# DOCKERFILE="docker-compose.yml"
# SERVICES=$(docker-compose \
#     -f $DIR/$DOCKERFILE \
#     -f $DIR/docker-compose.env.yml \
#     -f $DIR/optional/x-domain-service.yml \
#     -f $DIR/optional/replica-service.yml \
#     config --services \
#     | grep -v integration_tests \
#     | tr '\n' ' ')

# docker-compose \
#     -f $DOCKERFILE \
#     -f $DIR/docker-compose.env.yml \
#     -f optional/verifier-service.yml \
#     -f optional/verifier-service.local.yml \
#     down -v --remove-orphans