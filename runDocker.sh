#!/bin/bash
# For more details, see https://hub.docker.com/r/kochanpivotal/gpdb5oss/
set -e
[[ ${DEBUG} == true ]] && set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DOCKER_OSS_LABEL="GPDB 5 OSS"
export DOCKER_OSS_TAG="kochanpivotal/gpdb5oss"
export DOCKER_LATEST_OSS_TAG="kochanpivotal/gpdb5oss:latest"



#set -x

# Including configurations
# . config.sh


docker-compose up
