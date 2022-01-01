#!/bin/bash 
host=${1:-localhost}
while ping -c3 -w4 $host 
do  
sleep 30 
done
echo "$host has stopped responding to pings"