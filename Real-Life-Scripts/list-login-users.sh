#!/bin/bash

# Author: Daniel
# Description: This script will list users logged in by the date 

# last- command to list users logins and logouts

today=$(date | awk '{print $1, $2, $3}')

last | grep "$today" | awk '{print $1}'

