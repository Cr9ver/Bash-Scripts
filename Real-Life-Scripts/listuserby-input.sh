#!/bin/bash

# Author: Daniel
# Description: This script will list users logged in by user input


echo "Please enter day (e.g Mon)":
read a
echo ################

echo "Please enter month (e.g Aug)":
read b
echo ################

echo "Please enter date (e.g 18)":
read c
echo ################

last | grep "$d $m $c" | awk '{print $1}'


