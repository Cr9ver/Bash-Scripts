#!/bin/bash

# ls non_existent_directory
# exit_status=$?

# if [ $exit_status -ne 0 ]; then
#     echo "Command failed with exit status: $exit_status"
# else
#     echo "Command executed successfully"
# fi

# echo pwd
# echo "exit status is $?"

ls -l /home/vagrant/check

if [ $? -eq 0 ]
then 
echo File exists
else
echo File does not exist
fi