#!/bin/bash

if [ $# -ne 1 ] # number of arguments
then
    echo "Usage: $0 word" >&2 # redirect to stderr
    exit 2
fi
echo "$1"

# if cmd1
# then
#    cmd2
#    cmd3
# elif cmd4
# then
#    cmd5
#    cmd6
# else
#    cmd7
# fi
# cmd8