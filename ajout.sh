#!/bin/bash
folder=liste-sauvegarde
while
read -p "Veuillez entrer le chemin du fichier que vous souhaitez sauvegarder : " folder
ajout_ligne() {
    echo "Entrez le chemin du répertoire à supprimer :"
    read $chemin_repertoire  
    if 
    grep -q "$chemin_repertoire" "$folder"; then
        echo "/$chemin_repertoire/d" > "$folder"
        echo "Répertoire supprimé avec succès."
    else
        echo "Le répertoire n'est pas dans la liste."
    fi
}