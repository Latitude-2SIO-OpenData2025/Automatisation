#!/bin/bash

echo "Mise à jour des paquets..."
sudo apt update && sudo apt upgrade -y

echo "Installation d'Apache..."
sudo apt install apache2 -y

echo "Démarrage et activation d'Apache..."
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Apache a été installé avec succès."
