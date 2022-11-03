#!/bin/bash

echo "Give a name for the file:"
read -r FILENAME

NAME=$FILENAME-"$(date +"%Y-%m-%d")"
touch /home/user/"$NAME"
echo "$NAME has been created!"