#!/bin/bash
Prefixe=$1
Sauvegarde=${Prefixe}_$(date "+%Y_%m_%d_%H_%M") 
#déclaration de la variable avec la date
mkdir -p $Sauvegarde && echo "création OK"
#création du dossier si celui ci n'existe pas déjà
sauveIFS=$IFS
IFS=$'\n'
for repertoire in $( cat liste-sauvegarde ) #
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire $Sauvegarde
    fi
done 
IFS=$sauveIFS
