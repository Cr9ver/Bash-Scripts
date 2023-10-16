#!/bin/bash

# Author: Daniel
# Description: This script checks disk status 

a=$(df -h | egrep -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1)

for i in $a
do
    if [ $i -ge 90 ]
        then 
        echo Check disk space for $(df -h | grep $i)
    fi
done


#### Method 2


df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5,$1}' | while read output
do
        usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1  )
        partition=$(echo $output | awk '{print $2}' )
        
	if [ $usep -ge 90 ]
	then
        echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
        fi
done


#### Another basic method


echo
echo Following is the disk space status
echo
df -h | awk '0+$5 >= 90 {print}' | awk '{print $5, $6}'