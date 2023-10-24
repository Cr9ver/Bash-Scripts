#!/bin/bash
#Author: Daniel
# Description: Command to remove empty line in file 

file="test.txt"

sed -i '/^$/d' "$file"