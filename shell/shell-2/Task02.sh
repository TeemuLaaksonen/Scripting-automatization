#!/bin/bash

hosts=/etc/hosts
if [ -e $hosts ]
 then
    echo "File /etc/hosts exists."
    if [ -w $hosts  ]
        then
            echo "You can write file /etc/hosts"
    else
        echo "You don't have permission to write /etc/hosts"
    fi
else
    echo "File /etc/hosts doesn't exist."
fi