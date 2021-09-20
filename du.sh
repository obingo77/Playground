# this script checks the top disk space consumers



#!/bin/bash

#Big_users - find the big disk users in all dirs
 #dirs to check
CHECK_DIRECTORIES=" /var/log/home" 
#
#######Main scipt######
#
DATE=$(date '+%d%m%y')
#
exec > disk_space_$DATE.rpt #Make report file STDOUT
#
# nicely format report
echo "Top ten disk space consumers"
echo "for $CHECK_DIRECTORIES Directories" # loop to du directories
#
for DIR_CHECK in $CHECK_DIRECTORIES
do
  echo ""
  echo "The $DIR_CHECK Directory:" #Directory header
 # 
  du -S $DIR_CHECK 2>/dev/null |
  sort -rn |
  sed '{11,$D; =}' |
  sed 'N; s/\n/ /' |
  gawk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'
#
done
#
exit



  








