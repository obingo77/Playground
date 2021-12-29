#!/bin/bash 
filename=${1:-/home/ubuntu/}

if [ -O “$filename” ] || [ -G “$filename” ]; then  
  echo “$filename is mine or my group’s” 
else
  echo “$filename is not mine nor my group’s”
fi 
