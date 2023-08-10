#!/bin/bash

a=$(hostname) # `hostname` or $(hostname) can also be used
echo "Hello, my server name is $a"
echo 
echo What is your name? :
read b

#*#############
echo What is your profession ?

echo 
read c 
#*#############

echo Hello $b
echo Working as a $c is really nice
echo 