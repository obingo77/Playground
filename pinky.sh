#!/bin/bash

#get the first octets of the network ip
ifconfig | grep "172.31.19" | cut -d " " -f 10 | cut -d "." -f 1,2,3 | uniq > octects.txt 

#Set variable to have the value of octets.txt
OCTETS=$(cat octects.txt)

#Creates a new .txt
echo "" > $OCTETS.txt

#LOOP
for ip in {1..254}
do 
	ping -c 1 $OCTETS.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $OCTETS.txt &
done

cat $OCTETS.txt

# perform scan

nmap -sS --top-ports 20 -iL  $OCTETS.txt

exit
