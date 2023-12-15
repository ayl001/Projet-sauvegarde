#!/bin/bash
folder=liste-sauvegarde
while true:
do
# read -p "Veuillez entrer le chemin du fichier que vous souhaitez sauvegarder : " folder
ajout_ligne() {
    echo "Entrez le chemin du répertoire à ajouter : "
    read $chemin_repertoire  
    if
    [ -d $chemin_repertoire ]
# grep -q "$chemin_repertoire" "$folder"; then
        echo "/$chemin_repertoire/d" >> "$folder"
        echo "Répertoire ajouté avec succès."
    elif
    
    else
        echo "Le répertoire n'est pas dans la liste."
    
}
done
