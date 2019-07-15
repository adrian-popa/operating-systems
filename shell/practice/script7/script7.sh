#!/bin/bash

# 7. Consider a file containing a username on each line. Generate a comma-separated string with email addresses of the users that exist. The email address will be obtained by appending "@scs.ubbcluj.ro" at the end of each username. Make sure the generated string does NOT end in a comma.

FILE=$1

RESULT=""

# for USERNAME in `cat $FILE`; do
#     if [[ `grep ^$USERNAME /etc/passwd` ]]; then
#         ...
#     if [ ! -z "`grep ^$USERNAME /etc/passwd`" ]; then
#         ...
# done;

while read USERNAME; do
    if grep -q ^$USERNAME /etc/passwd; then
        RESULT="$RESULT$USERNAME@scs.ubbcluj.ro, "
    fi
done < $FILE

echo $RESULT | sed "s/,$//"
