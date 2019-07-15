#!/bin/bash

# 6. Find recursively in a directory, all the files that have write permissions for everyone. Display their names,
# and then remove the write permission for everybody. You will need to use chmod's symbolic permissions mode, instead
# of the octal mode we have used in class. The the chmod manual for details.

DIR=$1

for V in `find $DIR -perm -o=w -type f`; do
	echo $V
	chmod o-w $V
done
