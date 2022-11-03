#!/bin/bash

#Using /home/user in this script for testing purposes, could use just /home as well

rm /home/user/"$1" /home/user/"$2" /home/user/"$3"
echo "$1, $2 and $3 were deleted from /home/user/."