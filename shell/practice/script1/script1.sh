#!/bin/bash

# 1. Display a report showing the full name of all the users currently connected, and the number of processes belonging to each of them.

for user in `who | awk '{print $1}' | sort | uniq`; do
    fullName=`finger -s $user | awk '{print $2, $3}' | tail -n+2 | uniq`
    processes=`ps -eF | grep "^$user" | wc -l`
    echo $user: Full name: $fullName, number of processes: $processes    
done
