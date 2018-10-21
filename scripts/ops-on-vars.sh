#!/bin/bash

set -o errexit
set -o nounset

default_value=DEFAULT
x=Wert y= ; unset z

#echo "$x;$y;$z"

# if var not set, set to "default" - the var will be NOT changed!
echo "${x:-default}/${y:-default}/${z:-default}"

echo "${x-default}/${y-default}/${z-$default_value}"

# now set the vars too if empty
echo "${x:=default}/${y:=default}/${z:="$default_value"}"

x=Wert y= ; unset z

# set only for unset vars
echo "${x=default}/${y=default}/${z=default}"

string='Eine Zeichenkette'
# length here 17 no control(\0) chars
echo ${#string}

# 0 to 4 # string: 5 start at 5 # start from 5th last # start from 12th last and go 7 chars long
echo ${string:0:4}/${string:5}/${string: -5}/${string: -12:7}


file=/home/nutzer/test.c
echo $file

# removes at beginning /
echo ${file#/}

# removes everything before / include /
echo ${file##*/}

# removes . and file extension
echo ${file%.*}

# removes . and file extension
echo ${file%.*}

# removes file name
echo ${file%/*}

name="Max Arnold Mustermann"
# removes everything after first space
echo ${name%% *}

HOME=/home/nutzer
DATA=/data/nutzer
file=/home/nutzer/sub/file.gz

# change sample HOME with DATA for var file
echo ${file/$HOME/$DATA}

s1="gross"
s2="KLEIN"

echo ${s1^} ${s1^^} ${s2,} ${s2,,}

### More under https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html#Shell-Parameter-Expansion



