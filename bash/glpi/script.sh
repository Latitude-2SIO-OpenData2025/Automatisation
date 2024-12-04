#!/bin/bash

echo "Installation des dépendances..."
sudo apt update && sudo apt install wget unzip php-cli php-curl php-mysql php-ldap php-apcu -y

echo "Téléchargement de GLPI..."
wget https://github.com/glpi-project/glpi/releases/download/10.0.7/glpi-10.0.7.tgz
tar -xvzf glpi-10.0.7.tgz

echo "Déplacement vers /var/www/glpi..."
sudo mv glpi /var/www/glpi
sudo chown -R www-data:www-data /var/www/glpi

echo "GLPI a été installé avec succès."
