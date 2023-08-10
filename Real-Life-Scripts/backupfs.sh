#!/bin/bash

# Author: Cr9ver
# Description: Backup /etc and /var filesystem

tar cvf /tmp/backup.tar /etc /var

gzip backup.tar 

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
    echo "Backup was created"
    echo
    echo Archiving Backup
    scp /tmp/backup.tar.gz root@serverip  # send backup to remote server 
else
    echo "Backup failed"
fi

