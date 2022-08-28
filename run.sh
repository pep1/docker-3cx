#!/bin/bash

VERSION=18.0.3.450
USER=pep1
HOSTNAME=192.167.0.112

docker run \
        -d \
        --name 3cx \
        --hostname ${HOSTNAME} \
        --memory 2g \
        --memory-swap 2g \
        --network host \
        --restart unless-stopped \
        --privileged \
        ${USER}/3cx:${VERSION}
