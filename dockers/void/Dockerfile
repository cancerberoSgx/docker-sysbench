FROM voidlinux/voidlinux
RUN xbps-install -Suy
RUN xbps-install -Sy autoconf automake libtool glibc gcc make

COPY hostShared /shared1

RUN cd /shared1/sysbench && sh autogen.sh \
    && sh configure --without-mysql \
    && make