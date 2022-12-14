#!/bin/bash

echo "Enter the name of an animal or type 'exit' to end the script:"
read -r animal

while [ "$animal" != "exit" ]
do
    echo "$animal" >> animal.txt
    echo "Enter the name of an animal or type 'exit' to end the script:"
    read -r animal
done

echo "The animals in the file are:"
cat animal.txt