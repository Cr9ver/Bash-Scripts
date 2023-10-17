#!/bin/bash

#Author: Daniel 
#Description: This script would add system inventory to the database file

echo "Please enter hostname"
read host 
echo 
     grep -q $host ./database
     if [ $? -eq 0 ]
     then 
     echo ERROR -- This hostname $host exists already 
     echo
     exit 0
     fi

echo "Please enter your IP address"
read IP
echo
    grep -1 $IP ./database
    if [ $? -eq 0 ]
     then 
     echo ERROR -- This IP $IP exists already 
     echo
     exit 0
     fi

echo Please enter Description?
read description
echo

echo $host $IP $description >> ./database
echo The provided record has been added 
echo 