#!/bin/bash

# 4. Find recursively in a given directory all the symbolic links, and report those that point to files/directories that no longer exist. Use operator -L to test if a path is a symbolic link, and operator -e to test if it exists (will return false if the target to which the link points does not exist)

DIR=$1

for V in `find $DIR`; do
	if [ -L $V ] && [ ! -e $V ]; then
		echo $V false	
	fi
done
