#!/bin/bash

function count_objects {
    local value
    value=$(ls | wc -l)
    echo $value
}

count_objects