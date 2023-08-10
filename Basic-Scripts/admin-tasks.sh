#!/bin/bash

# Author: Daniel
# Description: basic admin commands 

echo This script would run basic administrative commands
echo
top | head -10
echo
df -h 
echo
free -m
echo 
uptime
echo 
iostat
echo
echo "End of script"