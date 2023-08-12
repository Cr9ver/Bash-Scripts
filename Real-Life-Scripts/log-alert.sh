#!/bin/bash

# Author : Daniel
# Description: This script will send an email of log errors to the admin


Team="mymail@gmail.com,randommail@email.com"

if [ -s /tmp/filtered-message ]
    then 
    cat /tmp/filtered-message | sort | uniq | mail -s "syslog messages" $Team
    rm /tmp/filtered-message
    else
fi 