#!/bin/bash

# Author: Daniel
# Description: This script will rename files endign with .txt


for filename in *.txt
do 
    mv $filename ${filename%.txt}.none
done