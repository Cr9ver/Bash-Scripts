#!/bin/bash
#Author: Daniel Olakunri 
#Description: This script would delete system inventory from the databse file 

echo "Enter hostname or IP address"
read hostip 
echo    
    grep -q $hostip ./database
if [ $? -eq 0 ]
    then 
    echo 
    sed -i '/'$hostip'/d' ./database
    echo "$hostip has been deleted "
else
    echo "Record $hostip does not exist "
 fi
