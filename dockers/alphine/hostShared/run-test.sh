
echo ""
echo ""
echo " * * * * CPU TEST * * * "

/shared1/sysbench/sysbench/sysbench --test=cpu run

echo ""
echo ""
echo " * * * * MEMORY TEST * * * "

/shared1/sysbench/sysbench/sysbench --test=memory run