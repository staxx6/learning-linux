#!/bin/bash

# Echos first argument if not -v flag is set

set -o nounset

declare -i verbose=0
if [ "${1-}" = "-v" ] # insert first argument '-' if unset to '' (no err from nounset)
then
    verbose=1
    shift
fi

if [ $# -ne 1 ]
then
    echo "Usage: $(basename $0) [-v] string" >&2 #arg0 has dir!
    exit 2
fi

[ $verbose -gt 0 ] && echo -n "Writing string: "
echo "$1"