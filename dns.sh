#!/bin/bash
FILE=/etc/shadow

if [ -e "$FILE" ] ;
then
 echo "file exists"
else
  echo "file doesnt exit"
fi   
    
# Okay, the file exists.
ls -ld "$FILE"    
stat $FILE