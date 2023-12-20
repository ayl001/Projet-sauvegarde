#!/bin/bash

# Ajout des variables de couleur
vert='\e[0;32m'
rouge='\e[0;31m'
# Couleur par défaut du terminal
neutre='\e[0;m'

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
        echo -e "$vert Chemin ajouté avec succès. $neutre"
    else
        echo -e "$rouge Le répertoire $nouveau_repertoire n'existe pas. $neutre"
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
            echo -e "$rouge Option invalide. $neutre Veuillez choisir 1 ou 2."
            ;;
    esac
done
