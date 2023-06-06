#/usr/bin/env bash

AVALANCHE_VERSION=v1.10.2
SUBNET_VERSION=v0.5.1
docker build --build-arg AVALANCHE_VERSION=${AVALANCHE_VERSION} --build-arg SUBNET_VERSION=${SUBNET_VERSION} . -t icculp/avax_dfk:${AVALANCHE_VERSION}-${SUBNET_VERSION}
docker image push icculp/avax_dfk:${AVALANCHE_VERSION}-${SUBNET_VERSION}
