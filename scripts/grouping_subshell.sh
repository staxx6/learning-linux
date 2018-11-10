#!/bin/bash

{ file=dat.in
    echo "File $file:"
    sort $file
} > dat.out

# one line
# { file=dat.in; echo "File $file:"; sort $file } > dat.out

# Write more stuff in pipe
{ echo "Bert"; echo "Cäser"; echo "Anton"; } | sort