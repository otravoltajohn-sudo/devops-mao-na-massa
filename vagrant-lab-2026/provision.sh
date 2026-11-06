#!/bin/bash
set -e

echo "Atualizando pacotes..."
apt-get update

echo "Instalando Apache..."
DEBIAN_FRONTEND=noninteractive apt-get install -y apache2

echo "Configurando o site..."
cp -a /vagrant/html/. /var/www/html/

echo "Iniciando Apache..."
systemctl enable --now apache2

echo "Laboratorio DevOps configurado!"