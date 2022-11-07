#!/bin/bash

function ping_url () {
    ping -c1 "$1" > /dev/null 2>&1
    exit_code=${?}
    if [ $exit_code -ne 0 ]
        then
            echo "Ping unsuccessful"
    elif [ $exit_code = 0 ]
        then
            echo "Ping successful"
    else
        echo "Something went wrong"
    fi
}


echo "Give url to ping:"
read -r URL

ping_url "$URL"

