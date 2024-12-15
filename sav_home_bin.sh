#!/bin/bash
############################################################################## 
#                                                                            #
#	SHELL: !/bin/bash       version 1	                                     #
#									                                         #
#	NOM: u2pitchjami						                                 #
#									                                         #
#							  					                             #
#									                                         #
#	DATE: 15/12/2024	           				                             #
#									                                         #
#	BUT: Script de SAV pour Home et Bin                 		             #
#									                                         #
############################################################################## 

SCRIPT_DIR=$(dirname "$(realpath "$0")")
source ${SCRIPT_DIR}/.config.cfg

echo -e "${BIGTITRE}[`date`] - Sauvegarde du dossier Home et bin de Pipo ${NC}" | tee -a "${LOG}"

if [ ! -f $BACKUP_HOME ];	then
    echo -e "${TITRE}[`date`] - Sauvegarde du dossier Home Pipo ${NC}" | tee -a "${LOG}"
    tar -czf ${BACKUP_HOME}.tar.gz ${HOMEDOSS}
    if [[ $? -eq "0" ]]; then
        echo -e "${PURPLE} Sauvegarde du dossier Home Pipo :${GREEN}OK ${NC}" | tee -a "${LOG}"
    else
        echo -e "${PURPLE} Sauvegarde du dossier Home Pipo :${RED}ECHEC !! ${NC}" | tee -a "${LOG}"
    fi
else
    echo -e "${TITRE}[`date`] - Dossier déjà sauvegarder aujourd'hui ${NC}" | tee -a "${LOG}"
fi

echo -e "${TITRE}[`date`] - Sauvegarde du dossier bin Pipo ${NC}" | tee -a "${LOG}"
tar -czf ${BACKUP_BIN}.tar.gz ${BINDOSS}
    if [[ $? -eq "0" ]]; then
        echo -e "${PURPLE} Sauvegarde du dossier bin Pipo :${GREEN}OK ${NC}" | tee -a "${LOG}"
    else
        echo -e "${PURPLE} Sauvegarde du dossier bin Pipo :${RED}ECHEC !! ${NC}" | tee -a "${LOG}"
    fi
echo
echo -e "${TITRE}[`date`] - C'est fini, bisous ${NC}" | tee -a "${LOG}"