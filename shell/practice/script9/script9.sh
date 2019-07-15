#!/bin/bash

# 9. Write a script that finds in a given directory hierarchy, all duplicate files and displays their paths. Hint: use checksums to detect whether two files are identical.

DIR=$1

NEWLINE=$'\n'

RESULT=""

for FILE1 in `find $DIR -type f`; do
    for FILE2 in `find $DIR -type f`; do
        CHK1=`md5sum $FILE1 | awk '{print $1}'`
        CHK2=`md5sum $FILE2 | awk '{print $1}'`
        if [ "$FILE1" != "$FILE2" ] && [ "$CHK1" == "$CHK2" ]; then
            RESULT="$RESULT$FILE1 - $FILE2${NEWLINE}"
        fi
    done
done

LINES_NO=`echo "$RESULT" | wc -l`
echo "$RESULT" | sort | uniq | tail -n +2
