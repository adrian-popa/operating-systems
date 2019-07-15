#!/bin/bash

# 8. Display all the mounted file systems who either smaller than then 1GB or have less than 10% free space.

IFS=$'\n'

df | head -n 1
for MFS in `df | tail -n +2`; do
    SIZE=`echo $MFS | awk '{print $2}'`
    FREE_SPACE=`echo $MFS | awk '{print $5}' | sed "s/.$//"`
    if [ $SIZE -lt 1048576 ] || [ $FREE_SPACE -lt 10 ]; then
        echo $MFS
    fi
done
