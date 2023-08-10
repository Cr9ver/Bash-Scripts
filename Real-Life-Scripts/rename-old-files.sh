#!/bin/bash

# Author: Cr9ver
# Description: This script will rename files older tham 90 days

# Command to create old files : touch -d "Thu, 1 March 2018 12:30:00" filename


target_dir="/absolute/file/path"

find "$target_dir" -mtime +90 -exec mv {} {}.old \; # or find "$target_dir" -type f -mtime +90 -exec rm {} \; to ensure only files are deleted


if [ $? -eq 0 ]; 
then
    echo "All files older than 90 days have been renamed"
else
    echo "Error: files have not been renamed"
fi