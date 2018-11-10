#!/bin/bash

i=3
test $i -gt 1 && echo "The value $i is greater than 1"
[ $i -eq 3 ] && echo "$i -eq 3 true"
[[ $i < 7 ]] && echo "$i < 7 true"
[ $i -ge 3  ; echo $? #error and a 2 -> syntax error

i='Hallo'
test $i -g 1 && echo "" #error
[ $i -eq 3 ] && echo "" #error
[[ $i -lt 7 ]] && echo "'$i' is lower than 7; true"

pi=3.14
[ $pi -gt 3 ] && "" #error

name=
[ -z "$name" ] ; echo $? #empty?
[ -n "$name" ] ; echo $? #not empty?

name=Haensel
[ -n "$name" ] ; echo $?

name2=Gretel
echo "----"
[ "$name" = "$name2" ] ; echo $? ; # equal?
[ "$name" < "$name2" ] ; echo $? # lexical?

echo "----"
z=
test -z $z ; echo $? # don't get it realy
test -z "$z" ; echo $? # quotes better

echo "--- Files - Dirs ---"
[ -e cannot-read ] && "Die Datei 'cannot-read' exist" # exist file?
[ -r cannot-read ] && "File 'cannot-read' isn't readable" #readable file?
[ -d testdir ] && echo "Dir 'testdir' exist" # exist dir?

touch test2
touch test1
[ test1 -nt test2 ] && echo "time1 is newer than time2" # newer than
#sleep
touch test2
[ test1 -ot test2 ] && echo "time1 is older than time2" # nope

echo "--- Logical links ---"
tag="Mittwoch"
monat="Januar"
test ! "$tag" = "Dienstag" && echo "Heute ist nicht Dienstag" # negate

[ "$tag" = "Mittwoch" -a "$monat" = "Januar" ] \
    && echo "Ein Mittwoch im Januar" # AND

[ "$tag" = "Dienstag" -o "$tag" = "Mittwoch" ] \
    && echo "Dienstag or Mittwoch" # OR

## not written var tests -v -o -R

echo "--- [[ ... ]] ---"
# no filename expansion ?
# no vars cutting to words ?
# no file redirection

