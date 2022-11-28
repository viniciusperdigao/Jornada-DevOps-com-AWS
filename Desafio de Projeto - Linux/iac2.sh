#!/bin/bash


# Update e Upgrade das bibliotecas
echo "Atualizando o servidor..."
apt-get update
apt-get updrage -y

# Instalando Apache2
apt-get install apache2 -y
# Instalando Unzip
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

