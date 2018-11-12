#!/bin/bash

set -o nounset

TEMP=$(getopt -o ve::a: --long verbose,encrypt::,append: \
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
            [ -z "$cipher" ] && cipher=DES
            shift 2;;
        -a|--append)
            append=1
            outfile="$2"
            shift 2;;
        --)
            shift
            break;;
        *)
            echo "$(basename $0): Internal error," \
                "unexpected option $1" >&2
            exit 2;;
    esac
done

echo "verbose=$verbose encrypt=$encrypt cipher=\"$cipher\"" \
    "append=$append outfile=\"$outfile\""

while [ $# -gt 0 ]
do
    echo "Argument: \"$1\""
    shift
done