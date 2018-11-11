#!/bin/bash

echo babcdefghfedcbaf | tr bf XY # b->X; f->Y
text='Das ist ein Text'
echo "$text" | tr '[a-z]' '[A-Z]' # or ${x^^}