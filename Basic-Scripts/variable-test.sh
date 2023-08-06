#!/bin/bash

#* Define variables

p=$(pwd)
l=ls
wi=$(whoami)
d=date
c='cal 2018'

echo "Run variables tasks"
echo
echo $p
$l
$d
echo "I am $wi"
$c