#!/bin/bash

root_home=$(egrep '^root:' /etc/passwd | cut -d : -f 6)
echo "$root_home"

zeile='In dieser Zeile ist mit -1738 eine ganze Zahl.'
zahl=$(echo "$zeile" | egrep -o -- '-?[[:digit:]]+')
# -- because of '-?' not sure why double [[]]
echo $zahl

zeile='Das ist ein langer Text'
zeile=$(echo "$zeile" | cut -c -10)
echo "$zeile"