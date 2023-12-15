#!/bin/bash
Sauvegarde=$1
for repertoire in $( cat liste-sauvegarde ) 
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire $Sauvegarde
        
    else 
            mkdir $Sauvegarde
    fi
done >> liste-sauvegarde
