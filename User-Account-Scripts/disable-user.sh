#!/bin/bash

# Author: Daniel
# Description: This script would disable inactive user accounts 
# Command to view users login: lastlog or lastlog -b 90 #view users that have not been logged in for 90days


a=$(lastlog | tail -n+2 | grep 'test' | awk '{print $1}') # check for user accounts with test in the name

for i in $a
do 
    usermod -L $i
done


# or 
lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} echo {}
lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}