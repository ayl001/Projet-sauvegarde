#!/bin/bash
Sauvegarde=$1
for repertoire in $( cat "/home/liste-sauvegarde" ) 
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire in $Sauvegarde
        
    else 
            mkdir $Sauvegarde
    fi
done >> liste-sauvegarde
