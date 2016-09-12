cd hostShared
git clone https://github.com/akopytov/sysbench.git

rm -rf dockers/alphine/hostShared
cp -rf hostShared dockers/alphine/


rm -rf dockers/gentoo/hostShared
cp -rf hostShared dockers/gentoo/


rm -rf dockers/ubuntu/hostShared
cp -rf hostShared dockers/ubuntu/


rm -rf dockers/tinycore/hostShared
cp -rf hostShared dockers/tinycore/


