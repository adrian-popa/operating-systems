#!/bin/bash

# 4. Sa se scrie un fisier de comenzi care va afisa toate fisierele dintr-un director si din subdirectoarele acestuia asupra carora au drepturi de scriere toate cele trei categorii de utilizatori.
# Aceste fisiere vor fi apoi redenumite, adaugandu-se sufixul .all (comenzi: find -perm, mv).

DIR=$1

for FILE in `find $dir -perm -a=w -type f`; do
    echo $FILE
    mv $FILE $FILE.all 
done
