#!/bin/bash

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
