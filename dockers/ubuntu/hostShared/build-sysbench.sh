# docker command : 
# docker run -it -v `pwd`:/hostShared sysbench-alphine sh /hostShared/build-sysbench.sh

# cp -rf /hostShared /shared1
cd /shared1/sysbench
make clean
sh autogen.sh; sh configure --without-mysql; make
