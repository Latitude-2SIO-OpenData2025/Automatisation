#!/bin/bash

# Couleurs pour l'affichage
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Bienvenue dans le script principal d'automatisation.${NC}"
echo "Veuillez sélectionner le service à installer :"
echo "1. Apache"
echo "2. Docker (avec Portainer)"
echo "3. Firewall"
echo "4. GLPI"
echo "0. Quitter"

read -p "Votre choix : " choix

case $choix in
  1)
    echo -e "${GREEN}Installation d'Apache...${NC}"
    bash bash/apache/script.sh
    ;;
  2)
    echo -e "${GREEN}Installation de Docker et Portainer...${NC}"
    bash bash/docker/script.sh
    ;;
  3)
    echo -e "${GREEN}Configuration du Firewall...${NC}"
    bash bash/firewall/script.sh
    ;;
  4)
    echo -e "${GREEN}Installation de GLPI...${NC}"
    bash bash/glpi/script.sh
    ;;
  0)
    echo -e "${GREEN}Fin du script.${NC}"
    exit 0
    ;;
  *)
    echo "Option invalide."
    ;;
esac
