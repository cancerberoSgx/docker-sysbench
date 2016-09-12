FROM alpine:3.3
RUN apk update
RUN apk add --no-cache bash 
RUN apk add --no-cache alpine-sdk automake autoconf libtool
COPY hostShared /shared1

RUN cd /shared1/sysbench && sh autogen.sh
RUN cd /shared1/sysbench && sh configure --without-mysql
RUN cd /shared1/sysbench && make