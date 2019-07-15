#!/bin/bash

# 5. Write a script that receives dangerous program names as command line arguments. The script will monitor all the processes in the system, and whenever a program known to be dangerous is run, the script will kill it and display a message.

while true; do
	for V in $@; do
		PRC=`ps -C $V | tail -n +2`
		if [ "$PRC" ]; then
			PID=`echo $PRC | awk '{print $1}'`
			kill -9 $PID
			echo Program $V has been killed. 
		fi
	done
	sleep 3;
done
