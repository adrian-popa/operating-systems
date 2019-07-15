#!/bin/bash

for file in `find . -name "*.txt"`; do
    if grep -q "cat" $file; then
        echo $file
    fi
done
