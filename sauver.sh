#!/bin/bash
Sauvegarde=$1
mkdir $Sauvegarde
for repertoire in $( cat liste-sauvegarde ) 
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire $Sauvegarde
    fi
done 


