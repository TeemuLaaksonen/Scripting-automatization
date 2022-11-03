#!/bin/bash

echo "Give absolute path to the directory:"
read -r PATHNAME
ls "$PATHNAME" | wc -l