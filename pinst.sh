###################################################
###### Merci de ne pas modifier l'entete ##########
################## DEBUT ENTETE ###################
SCRIPTS_NAMES="$(ls /etc/post_install.d/*)"
echo "Execution des scripts de post_installation $SCRIPTS_NAMES le $(date)" >> /mnt/data/log_pi.txt
cat $SCRIPTS_NAMES >> /mnt/data/log_pi.txt
##################   FIN ENTETE ###################
#### Les commandes que vous tapez ensuite seront ##
#### éxécutées lors du premier lancement ##########
###################################################

echo "Script de post installation terminée"



