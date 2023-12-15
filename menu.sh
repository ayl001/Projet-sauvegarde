touch liste-sauvegarde
clear
PS3="Choisissez une action : "
   select action in "Ajouter un répertoire à la liste de sauvegarde." \
   	"Supprimer un répertoire de la liste de sauvegarde." \
   	"Définir l'emplacement de sauvegarde." \
   	"Sauvegarde immédiate." \
   	"Planification de sauvegardes automatisées avec cron." \
   	"Quitter"
   	
   do
   	case $REPLY in
   	
  		1) bash ./ajout.sh 
  		;;
   	
  		2) bash ./suppression-v1.sh
  		;;
   	
  		3) while
  		 !	[ -d "$emplacement" ]
  		 	do
  				read -p "Emplacement : " emplacement 
  			done ;;
   		
   	4)  if [ -d  "$emplacement" ] ; then bash ./sauver.sh $emplacement ; fi;; 
# Notamment ici on appelle un autre script. 
   		
   	5) echo cette fonctionnalité n'est pas encore implémentée ; read -p "<continuer>" ;;
    chronophage.sh ;;
   		
   	6) echo "Belle journée !" ; exit ;;
   		
   	*) echo 1>&2 "Ce choix ne vous est pas proposé" ;;
	esac
done
   	

Quitter.
