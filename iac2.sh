#! /bin/bash

echo "Atualizando servidor"

apt-get update
apt-get upgrade -y

echo "Instalando apache"

apt-get install apache2 -y

echo "Instalando unzip"

apt-get install unzip -y

cd /tmp

echo "Download arquivos Bootcamp DIO"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e copiando arquivos"

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www.html/
