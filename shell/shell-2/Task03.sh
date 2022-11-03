#!/bin/bash

ARRAY=("$@")

for i in "${ARRAY[@]}"
do
   file "$i"
done
