folder="liste-sauvegarde" 

sortie="x"
while true; do
    ajout_ligne() {

        read -p "Entrez le chemin du répertoire à ajouter ou 'x' pour sortir : "      

        if [ "$chemin_repertoire" = "x" ]; then
            break
        elif [ -d "$chemin_repertoire" ]; then
            echo "/$chemin_repertoire/d" >> "$folder"
            echo "Répertoire ajouté avec succès."
        else
            echo "Le répertoire n'est pas valide."  

        fi
    }
    ajout_ligne
done
