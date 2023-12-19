#!/bin/bash



# Fichier contenant la liste des répertoires

fichier_liste="liste-sauvegarde"



# Fonction pour ajouter un nouveau répertoire à la liste

ajouter_repertoire() {

    # Demande à l'utilisateur de saisir le chemin du répertoire

    read -p "Entrez le chemin complet du nouveau répertoire : " nouveau_repertoire



# Vérifie si le répertoire existe

    if [ -d "$nouveau_repertoire" ]; then

        # Ajoute le chemin du nouveau répertoire à la liste

        echo "$nouveau_repertoire" >> "$fichier_liste"

        echo "Chemin ajouté avec succès."

    else

        echo "Le répertoire $nouveau_repertoire n'existe pas."

    fi

}



# Menu simple

while true; do

    echo "1. Ajouter un nouveau répertoire"

    echo "2. Quitter"

    

    read -p "Choisissez une option (1 ou 2) : " choix



    case $choix in

        1)

            ajouter_repertoire

            ;;

        2)

            echo "Au revoir!"

            exit 0

            ;;

        *)

            echo "Option invalide. Veuillez choisir 1 ou 2."

            ;;

    esac

done
