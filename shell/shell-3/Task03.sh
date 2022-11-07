#!/bin/bash

function count_objects () {
    value=$(ls $1 | wc -l)
    echo $value
}

echo "Give path:"
read VAR

count_objects "$VAR"