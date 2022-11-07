#!/bin/bash

function count_objects () {
    ARRAY=("$@");
    for i in "${ARRAY[@]}"
        do
            value=$(ls "$i" | wc -l)
            echo "Number of items in $i is $value"
        done
}

echo "Give paths separated with space:"
read -r -a ARRAY

count_objects "${ARRAY[@]}"