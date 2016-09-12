# docker command : 
# docker run -itsysbench-alphine sh /shared1/run-test.sh

echo ""
echo ""
echo " * * * * CPU TEST * * * "

/shared1/sysbench/sysbench/sysbench --test=cpu run

echo ""
echo ""
echo " * * * * MEMORY TEST * * * "

/shared1/sysbench/sysbench/sysbench --test=memory run