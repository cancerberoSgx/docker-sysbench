FROM vguardiola/gentoo
RUN emerge --sync
RUN emerge -pv app-shells/bash 
COPY hostShared /shared1

RUN cd /shared1/sysbench && sh autogen.sh \
&& sh configure --without-mysql \
&& make