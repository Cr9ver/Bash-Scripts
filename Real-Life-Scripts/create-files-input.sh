#!/bin/bash
# Author: Daniel
# Desciption: Create multiple user files with user input 


echo "How many files do you want"
read filenum

echo #################

echo Please enter the start name of the files
read name

for i in $(seq 1 $filenum) ### We use this when working with variables instead of {1..5} for example
do 
    touch $name.$i
done