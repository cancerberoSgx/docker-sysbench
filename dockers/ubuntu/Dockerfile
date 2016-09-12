FROM ubuntu:latest
COPY hostShared /shared1
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install autoconf autotools-dev libtool build-essential