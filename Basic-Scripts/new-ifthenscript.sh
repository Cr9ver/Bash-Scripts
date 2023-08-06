#!/bin/bash

clear

if [ -e /home/vagrant/error.txt ] #check if file exists in this directory -e to check if something exists
    then
    echo "File exists"
    else
    echo"file does nto exist"
fi