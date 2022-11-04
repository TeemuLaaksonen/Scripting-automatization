#!/bin/bash

#script must be run with sudo "sudo ./Task04.sh"

echo "Give the name of a new user:"
read -r USERNAME

if id -u "$USERNAME" > /dev/null 2>&1
then
    echo "User exists, script exits."
else
    echo "User doesn't exist, creating user $USERNAME."
    useradd -m -s /bin/bash "$USERNAME"
fi