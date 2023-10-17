#!/bin/bash
#Author: Daniel
#Description: This script would ask to add or delete a record from the database file

echo #####################
echo "Please select one of the following"
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo 

read choice 
case $choice in 
    a) ./add-record.sh;;
    d) ./delete-record.sh;;
    *) echo "Invalid choice"
esac