#!/bin/bash

addr=192.168.1
file=hosts.out

> $file

for i in $(seq 1 254);
do
    ping -c 1 -q -i 0.2 -w 1 $addr.$i >> $file ;
done