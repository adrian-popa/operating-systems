#!/bin/bash

STATE=""

while true; do
	NEW_STATE=""
	for V in `find -not -path '*/\.*'`; do
		if [ -f $V ]; then
			C=`sha1sum $V`
			LS=`ls -l $V | sha1sum`
		else
			C=`ls -lR $V | sha1sum`
			LS=`ls -l -d $V | sha1sum`
		fi	
		NEW_STATE="$NEW_STATE $C $LS"
	done
	if [ "$STATE" != "$NEW_STATE" ] && [ -n "$STATE" ]; then
		echo "DIRECTORY CHANGED"
	fi
	sleep 5;
	STATE="$NEW_STATE"
done
