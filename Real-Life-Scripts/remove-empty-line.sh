#!/bin/bash
#Author: Daniel
# Description: Command to remove empty line in file 

file="test.txt"

sed -i '/^$/d' "$file" #remove empty lines in file
sed -i 's/\t/ /g' "$file" #remove tab space in file