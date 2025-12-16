#!/bin/bash

<< process
	Write a shell script that accepts a process name as input and keeps checking if the process is running.
If it stops, print "Process <name> has stopped!".
process

# pgrep -x checks whether the exact process name is running
# > /dev/null suppresses output.
# /dev/null is a special file that discards everything written to it.

read -p "Enter process name: " pname

while true;
do
    if pgrep -x "$pname" > /dev/null;
    then
        sleep 2
    else
        echo "Process $pname has stopped!"
        break
    fi
done
