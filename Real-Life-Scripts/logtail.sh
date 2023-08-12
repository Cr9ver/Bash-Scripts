#!/bin/bash

# Author : Daniel
# Description: This script will log only defined keywords

tail -fn0 /var/log/messages | while read line # while to continuously read each line of input from the tail command 
do
echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
    if [ $? = 0 ]
    then
        echo $line >> /tmp/filtered-message
    fi
done