#!/bin/bash

#* Description this script would ping multiple remote hosts

hosts="path-to-file"

for ip in $(cat $hosts)
do
    ping -c1 $ip &> /dev/null  # $> redirects both standard output and standard error
    if [ $? -eq 0 ]
    then
        echo $ip OK
    else
        echo $ip NOT OK
    fi
done