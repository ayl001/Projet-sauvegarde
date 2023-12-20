#!/bin/bash
Sauvegarde=${1}_$(date "+%Y_%m_%d_%H_%M") 
bash ./sauver.sh $Sauvegarde ; read -p "..." ; clear
mkdir -p $Sauvegarde
for repertoire in $( cat liste-sauvegarde ) 
do
    if [ -e $repertoire ]; then 
            cp -R $repertoire $Sauvegarde
    fi
done 


