#!/bin/bash

echo "Activation du pare-feu UFW..."
sudo apt install ufw -y
sudo ufw enable

echo "Autorisation des ports nécessaires..."
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

echo "Firewall configuré avec succès."

