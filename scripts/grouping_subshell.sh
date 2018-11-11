#!/bin/bash

# works almost same but change dir/var views

( file=dat.in
    echo "File $file:"
    sort $file
) > dat.out

# one line no ';' on last CMD
# ( file=dat.in; echo "File $file:"; sort $file ) > dat.out

#> cd /tmp
#> msg="Hello"

#> ( cd /usr; pwd; msg="Bye"; echo "$msg" )
# Output: /usr and "Bye"
#> pwd; echo "$msg"
# Output: /tmp and "hello" dir not changed!

#> { cd /usr; pwd; msg="Bye"; echo "$msg" }
# Output: /usr and "Bye"
#> pwd; echo "$msg"
# Output: /usr and "Bye" dir changed!