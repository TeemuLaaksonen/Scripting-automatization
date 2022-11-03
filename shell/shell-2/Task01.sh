#!/bin/bash

echo "Give the path of the file you want to remove:"
read -r PATHNAME
if [ -f "$PATHNAME" ] && [ ! -s "$PATHNAME" ]
then
    rm "${PATHNAME}"
    echo "$PATHNAME was removed."
else
    echo "The file doesn't exist or the path doesn't point to a regular file."
fi