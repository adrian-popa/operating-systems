#!/bin/bash

# 3. Find recursively in a directory, all the files with the extension ".log" and sort their lines (replace the original file with the sorted content).

DIR=$1

for file in `find $DIR -name "*.log"`; do
    sort -o $file $file 
done
