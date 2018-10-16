#!/bin/bash

#set -o nounset #same with set -u (-o = option OPTION)
#set -o errexit #if program has an error stop script

echo "Hello, world!"

var1=Wort
var3="Hello world"

#dereference
echo var1:var2:var3:$var1:$var2:$var3

#{} to make clear what the var names are
echo $var1gefecht:${var1}gefecht
touch var3 #result ls: 2 files "Hello" and "world"
touch "$var3" #result is one file

x="ls -l test.*"
$x #result in > ls -l test.*

x='value ls'
y="$x"
echo "$y"

a="test a"
b='test b'
c="echo c"
d='echo d'
echo "--$ --"
echo $a
echo $b
echo $c
echo $d
echo "--$""--"
echo "$a"
echo "$b"
echo "$c"
echo "$d"
echo "--$''--"
echo '$a'
echo '$b'
echo '$c'
echo '$d'
echo "----------"

set -o nounset #same with set -u (-o = option OPTION)
set -o errexit #if program has an error stop script
echo "$var1"
#echo "$var2" program stops unbound var!
echo "$var3"

unset var3
#echo "$var3" program stops unbound var!

### special vars (because of nounset cmts)

echo "$0" #script name
#echo "$1" #first param
#echo "$2" #second param ...
#echo "${12}" #for more than 9 params
echo "$#" #number of params

### Exit code
cat /dev/null ; echo $? #returns 0
cat /etc/shadow ; echo $? #returns 1 "permission denied"

# Pipes and $? last cmd is saved
true | false
echo "$?" #1

# negate
!false
echo "$?" #0

# substition
true $(false)
echo "$?" # 0

## Problem
false # does nothing just returning unsuccessfuly exit
echo "$?" # 1
echo "$?" # 0 - previous echo was successfuly - save in var!