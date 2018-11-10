#!/bin/bash

declare -i i=0

for file in *.out
do
    echo "$file"
    i=$((i+1))
done
echo "$i"