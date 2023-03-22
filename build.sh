#/usr/bin/env bash

AVALANCHE_VERSION=v1.9.12
SUBNET_VERSION=v0.4.12
docker build --build-arg AVALANCHE_VERSION=${AVALANCHE_VERSION} --build-arg SUBNET_VERSION=${SUBNET_VERSION} . -t icculp/avax_dfk:${AVALANCHE_VERSION}-${SUBNET_VERSION}
docker image push icculp/avax_dfk:${AVALANCHE_VERSION}-${SUBNET_VERSION}
