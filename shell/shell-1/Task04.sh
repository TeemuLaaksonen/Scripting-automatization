#!/bin/bash

echo "Give absolute PATH or FILENAME to the FILE you want to copy:"
read -r SOURCE

echo "Give absolute PATH to DESTINATION dir of the copied file:"
read -r DESTINATION

cp "$SOURCE" "$DESTINATION"
echo "File $SOURCE was copied to $DESTINATION"
# ls "$DESTINATION"