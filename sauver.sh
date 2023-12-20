#!/bin/bash
Sauvegarde=${1}_$(date "+%Y_%m_%d_%H_%M") 
#déclaration de la variable avec la date
mkdir -p $Sauvegarde 
#création du dossier si celui ci n'existe pas déjà
for repertoire in $( cat liste-sauvegarde ) #
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire $Sauvegarde && echo "ça marche"
    fi
done 


