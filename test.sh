#!/bin/bash

test -d /usr/local/bin
if [ "$?" -eq 0 ] # check the return code
then            # The return code is zero
    echo '/usr/local/bin does exist'
    
else           # The return code is not a zero

   echo '/usr/local/bin does not exist'
 
fi   
