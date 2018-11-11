#!/bin/bash

var="echo 'lel'"
$var # prints 'lel' with '

eval $var   # prints without '

var2="tag=monday"
$var2 # start it as cmd not as var (cmd not found err)
echo $tag #empty
eval $var2
echo $tag 