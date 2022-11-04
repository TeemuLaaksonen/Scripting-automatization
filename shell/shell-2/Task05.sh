#!/bin/bash

while true; do

echo "Give operation (-, +, * or /) or 'exit' to exit script:"
read -r OPERAND

if [ "$OPERAND" = "exit" ]
then
break
fi

echo "Give first value:"
read -r VALUE1 

echo "Give second value:"
read -r VALUE2
    if [ "$OPERAND" = "+" ]
        then
            RESULT=$((VALUE1+VALUE2))
    elif [ "$OPERAND" = "-" ]
        then
            RESULT=$((VALUE1-VALUE2))
    elif [ "$OPERAND" = "*" ]
        then
            RESULT=$((VALUE1*VALUE2))
    elif [ "$OPERAND" = "/" ]
        then
            RESULT=$((VALUE1/VALUE2))
    fi
    echo "Result: $RESULT"
done