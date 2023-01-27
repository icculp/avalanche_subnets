FROM golang:1.19.1 AS avalanche

ARG AVALANCHE_VERSION

RUN git clone https://github.com/ava-labs/avalanchego.git \
  /go/src/avalanchego

WORKDIR /go/src/avalanchego

RUN git checkout $AVALANCHE_VERSION && \
    ./scripts/build.sh

ARG SUBNET_VERSION

WORKDIR /go/src/DefiKingdoms

RUN git clone https://github.com/ava-labs/subnet-evm.git && \
    cd subnet-evm && \
    git checkout $SUBNET_VERSION && \
    ./scripts/build.sh /go/src/avalanchego/build/plugins/mDV3QWRXfwgKUWb9sggkv4vQxAQR4y2CyKrt5pLZ5SzQ7EHBv

