#!/bin/bash

function addition () {
    VALUE1=$1
    VALUE2=$2
    RESULT=$((VALUE1+VALUE2))
}

function subtraction () {
    VALUE1=$1
    VALUE2=$2
    RESULT=$((VALUE1-VALUE2))
}

function division () {
    VALUE1=$1
    VALUE2=$2
    RESULT=$((VALUE1/VALUE2))
}

function multiplication () {
    VALUE1=$1
    VALUE2=$2
    RESULT=$((VALUE1*VALUE2))
}



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
            addition "$VALUE1" "$VALUE2"
    elif [ "$OPERAND" = "-" ]
        then
            subtraction "$VALUE1" "$VALUE2"
    elif [ "$OPERAND" = "*" ]
        then
            multiplication "$VALUE1" "$VALUE2"
    elif [ "$OPERAND" = "/" ]
        then
            division "$VALUE1" "$VALUE2"
    fi
    echo "Result: $RESULT"
done