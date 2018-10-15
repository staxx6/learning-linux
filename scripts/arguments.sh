#!/bin/bash
set -o nounset

echo "Number of arguments: $#"
echo "Script name: $0"
echo "\$1=$1 \$11=$11 \${11}=${11}" # escaping \$

shift 2 # move arguments 2 to the left

echo "-----------"
echo "Number of left arguments: $#"
echo "\$1=$1"

# set new arguments (-- don't use folowing arguments as options)
set -- bunt der Regenbogen der ist fantastisch farbig ist er auch sommer

echo "-----------"
echo "Number arguments: $#"
echo "\$1=$1 \${11}=${11}"