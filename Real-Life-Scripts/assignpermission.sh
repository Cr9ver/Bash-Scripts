#!/bin/bash

# Author: Daniel
# Description: Assign permissions to files

# total=$(ls -l dan* | wc -l)


filename="nameofile"
total=$(ls -l $filename | wc -l)
echo it will take $total seconds to assign permissions

for i in $filename
do 
    echo Assigning permissions to $i
    chmod +w $i
    sleep 1
done