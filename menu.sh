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
   	
  		1) bash ./ajout.sh ; read -p "..." ;  clear
  		;;
   	
  		2) bash ./suppression-v1.sh ; clear
  		;;
   	
 		3) 
  				read -p "Emplacement de sauvegarde : " emplacement
  				clear
  				continue
  				 ;;
   		
   	4)  
   	EDS=${emplacement}_$(date "+%Y_%m_%d_%H_%M") 
   	echo $EDS
   	bash ./sauver.sh $EDS ; read -p "..." ; clear
   	;; 
# Notamment ici on appelle un autre script. 
   		
   	5) 
   		echo "cette fonctionnalité n'est pas encore implémentée" ; 
   		read -p "<continuer>"
   		clear 
   	;;	
   	6) 
   		clear ; echo "Belle journée"
   		exit 0 
   		;;
   	*) read -p "Ce choix n'est pas permis, tapez <return>"; clear
   	;;
esac
done
