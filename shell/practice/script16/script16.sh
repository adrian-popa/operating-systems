#!/bin/bash

# 6. Sa se scrie un fisier de comenzi care are ca parametri triplete formate dintr-un nume de fisier, un cuvant si un numar k. Pentru fiecare astfel de triplet, se vor afisa toate liniile fisierului care contin cuvantul respectiv exact de k ori.
# (comenzi: shift, awk)

FILE=$1
WORD=$2
K=$3

while [ ! -z "$FILE" ]; do
    echo $FILE:
    
    IFS=$'\n'
    for LINE in `grep -w $WORD $FILE`; do
        WORD_CNT=0
        IFS=$' '
        for CURRENT_WORD in $LINE; do
            if [[ $CURRENT_WORD == $WORD ]]; then
                WORD_CNT=$((WORD_CNT + 1))
            fi
        done

        if [ $WORD_CNT == $K ]; then
           echo $LINE
        fi
    done

    shift 3
    
    FILE=$1
    WORD=$2
    K=$3
done
