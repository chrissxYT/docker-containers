FROM ubuntu:latest

ARG BINUTILS_VERSION=2.36.1
ARG GCC_VERSION=11.1.0

RUN mkdir -p /usr/src/
COPY build.sh /usr/src/

RUN sh /usr/src/build.sh $BINUTILS_VERSION $GCC_VERSION aarch64-none-elf
