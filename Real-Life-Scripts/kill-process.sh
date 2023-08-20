#!/bin/bash
# Description: kill process with pid
# Author: Daniel


# Script is just killing sleep600 process which was started
# Command to test: sleep 600 

ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

echo All sleeping processes are killed

# or just use 

pkill -f "sleep 600"