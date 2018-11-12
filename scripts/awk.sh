#!/bin/bash

# can be in own file
# is a programming lang to extract data from a file

awk '{
    print $0 # prints all same as "print" without args
}' awk_test.dat

echo "--------"

awk '{
    print $2 # print 2 field
}' awk_test.dat #input

echo "--------"

awk '{
    print $4,$1 # print more fields
}' awk_test.dat

echo "--------"

size=`ls -lh awk_test.dat | awk '{print $5}'` # don't put ls -l in \
    # pipes different field length by devices
echo "Size of file awk_test.dat: $size"

echo "--------"

awk '{
    print NF, $NF   # NF = number of fields $NF = get last field
                    # $(NF-1) field before last one
}' awk_test.dat

echo "--------"

awk 'BEGIN {
    print "Name   Kunden Stadt" # Begin block
    print "---------------------"
}

{
    printf "%-8s %4d %-10s\n",$1,$2,$4
}

END {
    print "---------------------"
}
' awk_test.dat

awk '/error/ {print $2}' awk_test.dat # lines with "error"
#awk '/Jul 2[0-3]/ {print $2}' awk_test.dat # lines from 20. to 23. Jul

echo "--------"

awk '
/error/ {print $2} # pattern for one {CMDS}
/error2/ {print $2}
' awk_test.dat # lines with "error"

echo "------- NR <=2 ----"

awk 'NR <= 2 {print $1}' awk_test.dat # only lines from 1 to 2
    # NR=Number of records

#awk '{print $1}' file1 file2 file3 # NR is ongoing, FNR current file

### much much more