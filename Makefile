#the linux target has a dependeny on the clean target
linux: clean
	#runs linux.sh
	./bin/linux.sh

#clean target 'cleans up' after linux tagert is finished 
clean:
	#runs the cleanup script
	./bin/cleanup.sh
