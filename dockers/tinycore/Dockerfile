FROM tatsushid/tinycore:7.2-x86_64

COPY hostShared /shared1

# Instructions are run with 'tc' user

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG=C.UTF-8 LC_ALL=C

RUN tce-load -wic gnupg curl \
    && rm -rf /tmp/tce/optional/*

# gpg: key F73C700D: public key "Larry Hastings <larry@hastings.org>" imported
RUN gpg2 --keyserver pool.sks-keyservers.net --recv-keys 97FC712E4C024BBEA48A61ED3A5CA953F73C700D

ENV PYTHON_VERSION 3.5.2

# if this is called "PIP_VERSION", pip explodes with "ValueError: invalid truth value '<VERSION>'"
ENV PYTHON_PIP_VERSION 8.1.2

RUN tce-load -wic \
        bzip2-dev \
        flex \
        file \
        gcc \
        make \
        linux-4.2.1_api_headers \
        glibc_add_lib \
        glibc_base-dev \
        openssl-dev \
        gdbm-dev \
        ncurses-dev \
        readline-dev \
        bash \
        automake \
        libtool \
        m4

COPY hostShared /shared1

RUN cd /shared1/sysbench && sh autogen.sh \
    && sh configure --without-mysql \
    && make
