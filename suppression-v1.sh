#!/bin/bash
# Suppression d'entrées de la liste de sauvegarde
#
# On appelle select, mais comme sa liste change on sort de select (avec break et on reboucle (while))

sortie=10
while
	[ $sortie -ne 0 ]
	
	do
clear
PS3="Sélectionner le fichier à supprimer de la liste de sauvegarde, 0 pour sortir : "
ifsbkp=$ifs
IFS=$'\n'
mapfile -t tableau < liste-sauvegarde
select item in ${tableau[@]}
	do
	
	re='^[0-9]+$' # expression régulière pour un nombre entier positif
	if ! [[ $REPLY =~ $re ]] ; then
   	echo "$REPLY n'est pas un entier positif" >&2; 
   	read -p "<continuer>" ; 
   	clear
   	continue
	fi
	nblignes=$(cat liste-sauvegarde |wc -l)
   if [ $REPLY -gt $nblignes ]
   	then
   	echo >&2 "Vous êtes en dehors des limites"
   	read -p "<continuer>" ; 
   	clear ; 
   	continue
   fi
	sortie=$REPLY
	if [ $sortie -eq 0 ]
			then
			break
	fi
 	read -p "Êtes vous sûr de supprimer $item de la liste ? o/n " supp
 	if [ $supp = "o" ]
 	then
 		# on procède
 		sed "${REPLY}p" liste-sauvegarde >> liste-suppression
 		sed -i "${REPLY}d" liste-sauvegarde
 	break 
 	else
 		echo "Pas de suppression ce coup-ci"
 		read -p "<continue>r" 
 		continue
	fi
 	
	done

	done	
IFS=$ifsbkp