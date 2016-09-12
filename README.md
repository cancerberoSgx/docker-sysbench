example usecase

	sh setup.js
	docker build -t sysbench-alphine dockers/alphine
	docker run -it sysbench-alphine sh /shared1/run-test.sh

#get and build sysbench. git, bash/sh and make /make tools must be installed

	git clone https://github.com/akopytov/sysbench.git
	cd sysbench; 
	sh autogen.sh; sh configure --without-mysql; make

#execute sysbench test: 

	./sysbench/sysbench --test=cpu run

#docker tut commands

	#Requirement: docker is installed
	docker build -t sysbench-alphine dockers/alphine

	#how to run a bash (mount current dir into guest /hostShared folder)
	docker run -it -v `pwd`:/hostShared vm1 bash

	same as above but forwarding guest port 777 to host port 7777
	docker run -it -v `pwd`:/hostShared -p 7777:7777 vm1 bash 
	
	#Run vm1 node http server executing a mounted script
	docker run -v `pwd`:/hostShared vm1 sh /hostShared/guest/script1.sh

	#see vm1 container id
	docker ps | vm1

	docker kill 1cbbcf7779f5