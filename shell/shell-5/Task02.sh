#!/bin/bash

# Check if a file was provided as an argument
if [ $# -eq 0 ]
then
    echo "No file provided. Please provide a csv file as an argument."
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]
then
    echo "File does not exist. Please provide a valid csv file as an argument."
    exit 1
fi

# Read the file and print the values
echo "Reading file $1..."
while IFS=";", read -r manufacturer model color year;
    do
    round=1
        echo "--- Round $round ---"
        echo "Manufacturer: ${manufacturer}"
        echo "Model: ${model}"
        echo "Color: ${color}"
        echo "Year: ${year}"   
    done < "$1"