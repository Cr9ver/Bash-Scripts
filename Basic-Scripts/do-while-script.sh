#!/bin/bash

count=0
num=10
while [ $count -lt 10 ]
do  
    echo
    echo $num seconds left to stop this process $1
    echo
    sleep 1

num=$((num -1))
count=$((count + 1))
done
echo
echo $1 process is stopped!!!
echo