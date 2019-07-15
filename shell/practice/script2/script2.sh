#!/bin/bash

# 2. Find recursively in a directory all ".c" files having more than 500 lines. Stop after finding 10 such files.

DIR=$1

filesFound=0

for file in `find $DIR -name "*.c"`; do
    lines=`cat $file | wc -l`
    if [ $lines -gt 500 ]; then
        echo $file
        filesFound=$((filesFound + 1))
        if [ $filesFound -eq 10 ]; then
            break
        fi
    fi
done
