#!/bin/bash
# Description: Script to ping a remote host and notify 

hosts="192.168.1.1"
ping -c1 $hosts >> /dev/null
if [ $? -eq 0 ]
then
    echo $hosts OK
else
    echo $hosts NOT OK
fi

