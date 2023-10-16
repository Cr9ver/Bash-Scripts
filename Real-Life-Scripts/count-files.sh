#!/bin/bash

# Author: Daniel
# Description: This script would verify total number of files

a=$(ls -l file* | wc -l)

if [ $a -eq 20 ]
    then
    echo Yes there are $a files
    else
    echo Files are less than 20
fi