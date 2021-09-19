#!/bin/bash

test -d /usr/bin
if  pwd # check the return code
then            # The return code is zero
    echo 'it`s working'
    
else           # The return code is not a zero

   echo '/usr/local/bin does not exist'
 
fi   
