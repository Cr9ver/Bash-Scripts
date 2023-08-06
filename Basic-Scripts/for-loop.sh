#!/bin/bash

for i in {1..5}
do 
    echo "Welcome $i times"
done



#* 2nd for loop
# This script would ouput with user with different actions

echo 
read -p "What is your name: " username
for i in eat run jump play
do
echo See $username $i
# done


#* Loop to create 5 files named 1-5  
echo

for i in {1..5}
do
    touch $i
done


#* Loop to delete 5 files named 1-5  
echo

for i in {1..5}
do
    rm $i
done


#*List all users one by one from /etc/passwd file


i=1
for username in `awk -F: '{print $1}' /etc/passwd`
do
echo "Username $((i++)) : $username"


#* Specify days in for loop


i=1
for day in Mon Tue Wed Thu Fri
do
echo "Weekday $((i++)) : $day"
done
