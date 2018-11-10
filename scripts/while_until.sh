#!/bin/bash

# modern
declare -i i=0
while ((i<3))   # arithmetic
do
    echo $i
    ((i=i+1))
done

#old
i=0
while false #[ $i -lt 3 ]
do
    echo $i
#    i='expr $i + 1' # got error?
done

#iterates over arguments
while [[ $# -gt 0 ]]
do
    echo $1
    shift
done

# break;continue 

### UNTIL - like while but negate