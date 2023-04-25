FROM debian:bullseye
MAINTAINER Glenn Brown <glenn.brown@gmail.com>

ARG WSDD2_VERSION

RUN apt update && \
    apt install -y \
        build-essential  \
        git \
        checkinstall \
        curl
RUN curl -LO https://github.com/Netgear/wsdd2/archive/refs/tags/${WSDD2_VERSION}.tar.gz && \
    tar -xvf ${WSDD2_VERSION}.tar.gz && \
    cd wsdd2-${WSDD2_VERSION} && \
    make all && \
    checkinstall -Dy --install=no --nodoc && \
    mkdir /build && \
    cp *.deb /build/wsdd2-from-source.deb