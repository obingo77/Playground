#!/bin/bash

# checks to see if $Home dir exists => and if "testing file exists in dir"
if [ -d $HOME ] && [  $HOME/Playground ]
then 
   echo "The file exists + u can write to it"
else
   echo "I can't write to it"
fi











