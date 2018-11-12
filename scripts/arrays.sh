#!/bin/bash

declare -a arr
arr[0]=1
arr[1]=2
echo $arr[1] #nope
echo ${arr[1]} #yes

arr[2]=$((${arr[0]}+${arr[1]}))
echo ${arr[2]}

echo "----- mapfile"

echo -e "One line\nand\nanother one" > input
declare -a lines
mapfile lines < input # put lines in array
echo ${#lines[@]}

echo "----- assoziative arrays"

declare -A assoc=([Null]=0 [E I N S]=1 [Zwei]=2 [vier]=4)
assoc["fünf"]=5

echo ${assoc[@]} # no real order
