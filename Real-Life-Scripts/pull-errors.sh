#!/bin/bash
# Author: Cr9ver
# This script will pull error messages from /var/log/messages


grep -i error /var/log/messages > /home/user-name/output-error.txt
