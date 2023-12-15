#!/bin/bash
folder=liste-sauvegarde
sortie=x
while true:
do
ajout_ligne() {
    echo "Entrez le chemin du répertoire à ajouter ou x pour sortir"
    read $chemin_repertoire  
    if
    [ -d $chemin_repertoire ]
  
        echo "/$chemin_repertoire/d" >> "$folder"
        echo "Répertoire ajouté avec succès."
       else
        echo "Le répertoire n'est pas dans la liste."
       elif
      [ $sortie -eq x ]; then
        break
    fi
    
}
done
