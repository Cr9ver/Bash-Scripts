#!/bin/bash

# Author: Daniel
# Description: This script will check for files


FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/ssh/sshd_ssh_config
/etc/fake"

echo ######################

for file in $FILES
do 
    if [ ! -e $file ]
    then 
        echo $file does not exist
        echo 
    else
        echo $file exists
    fi
done