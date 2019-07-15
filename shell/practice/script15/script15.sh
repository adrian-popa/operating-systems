#!/bin/bash

# 5. Pentru fiecare parametru din linia de comandÄ: dacÄ e fiČier, se vor afiČa numele, numÄrul de caractere Či de linii din el (ĂŽn aceastÄ ordine), iar dacÄ e director, numele Či cĂ˘te fiČiere conČine (inclusiv ĂŽn subdirectoare).
# (comenzi: test, wc, awk, find).

while [ -n $1 ]
do
	if [-z $1 ]
	then
		break
	fi
	if [ -f $1 ]
	then
              file=`wc -m -l $DF | awk '{print $3; print $2; print $1;}'`
                echo $file
        else
                subdir=`find $1 -type f`
                declare -i nr=0
                for f in $subdir
                do
                        nr=$nr+1
                done
                echo $1 $nr
        fi
done