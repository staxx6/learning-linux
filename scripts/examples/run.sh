#!/bin/bash
flag=$1
file=$2

if [ $flag == "-c" ]; then
    echo -en "\033[1;33m"
elif [ $flag == "-b" ]; then
    echo -en "\033[1;33m\033[1;40m"
fi
echo "-------COMPILE--------------------------"

if gcc $file -o ${file%.*}; then
    if [ $flag == "-c" ]; then
        echo -en "\033[1;34m"
    elif [ $flag == "-b" ]; then
        echo -en "\033[1;34m\033[1;40m"
    fi
    echo "-------RUN------------------------------"
    ./${file%.*}
    if [ $flag == "-c" ]; then
        echo -en "\033[1;32m"
    elif [ $flag == "-b" ]; then
        echo -en "\033[1;32m\033[1;40m"
    fi
    echo "-------END------------------------------"
else
    if [ $flag == "-c" ]; then
        echo -en "\033[1;31m"
    elif [ $flag == "-b" ]; then
        echo -en "\033[1;31m\033[1;40m"
    fi
    echo "-------ERROR----------------------------"    
fi