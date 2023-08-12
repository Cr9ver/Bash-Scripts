#!/bin/bash

# Author: Daniel
# Description: This script would copy files to remote hosts

a=4(cat /home/file/path)

for i in $a
    scp filetotransfer $i:/tmp
done


#* more optimized version below 



# List of remote hosts
# remote_hosts=("redhat1" "redhat2" "redhat3" "redhat4")

# # File to transfer
# file_to_transfer="filetotransfer"

# # Destination directory on remote hosts
# remote_directory="/tmp"

# # Loop through remote hosts and copy the file
# for host in "${remote_hosts}" 
# do
#     scp "$file_to_transfer" "$host:$remote_directory"
# done