#!/bin/bash

declare -u all_big # uppercase
declare -l city    # lowercase
all_big="test"
echo $all_big

city="MÜnchen"
echo $city

declare -i x # integer
x=3*5
echo $x
# x="Wat dat" ERROR

declare -r hi="Hello world" # read-only
# hi="neee" ERROR
echo $hi

declare -n x=y # somewhat pointer
y=5
echo $x
x=7
echo $y

declare -rix x=hallo # combi and export
bash -c 'echo $x'