# docker command : 
# docker run -it -v `pwd`:/hostShared sysbench-alphine sh /hostShared/run-test.sh

# cp -rf /hostShared /shared1
sh /shared1/build-sysbench.sh
/shared1/sysbench/sysbench/sysbench --test=cpu run

