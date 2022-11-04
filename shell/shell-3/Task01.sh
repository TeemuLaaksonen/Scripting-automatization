#!/bin/bash

declare -a VALUEARRAY
while true; do
    echo "Give a value to be added to array:"    
    read -r VALUE
if [ "$VALUE" = "exit" ]
    then
        break    
else
    VALUEARRAY+=("$VALUE")
fi   
done

echo "Your input was:"
for index in "${VALUEARRAY[@]}"
do
    echo "$index"
done