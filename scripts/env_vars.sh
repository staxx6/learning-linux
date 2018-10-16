#!/bin/bash

export my_var # add var to env 
export -n my_var # remove var

v1=test
v2=test

export v2
export v3=test
bash -c 'echo $v1:$v2:$v3; export v4=test'
echo $v4

export v1
export -n v2
v4=test bash -c 'echo $v1:$v2:$v3:$v4'

echo $v4