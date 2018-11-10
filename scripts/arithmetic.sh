#!/bin/bash

i=0
echo $(( $i + 1))

i=$(($i+5))
echo $i

i=$((j=i+6, 2*j)) # 5+6
echo $i

