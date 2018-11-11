#!/bin/bash

printf 'Hello' # no new line
printf 'Hello\n' #new line
printf '1\n' '2\n' # prints only 1 (echo prints both)
printf 'Hello %s\n' TEST   # s=string

printf '>%10s<\n' 'Bash' # 10 width text on right
printf '>%-10s<\n' 'Bash' # 10 width text on left

printf '>%10s<\n' 'Bash-Programing'
printf '>%10.10s<\n' 'Bash-Programing' # max chars
printf '>%.10s<\n' 'Bash-Programing' # max chars

printf '>%4d<\n' 25 # numbers, width 4
printf '>%04d<\n' 25 # fill with 0
printf '>%+04d<\n' 25 # fill with 0 and +

### and much more
