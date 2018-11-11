#!/bin/bash

set -o nounset

TEMP=$(getopt -o ve::a: --long verbose, encrypt::,append: \
    -n $(basename $0) -- "$@") || exit 1
echo "TEMP=$TEMP"
eval set -- "$TEMP"

declare -i verbose=0
declare -i encrypt=0
cipher=
declare -i append=0
outfile=

while true
do
    case $1 in
        -v|--verbose)
            ((verbose++))
            shift;;
        -e|--encrypt)
            encrypt=1
            cipher="$2"
            [ -z "$cipher" ] &&