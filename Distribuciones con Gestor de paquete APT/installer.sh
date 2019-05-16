#!/bin/bash
# Script para la automatización de instalación de algunos paquetes en distribuciones con gestor de paquete APT.
echo "Instalando sublime text 3"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
echo ""
echo ""
echo "Instalando pip3 para python"
sudo apt install python3-pip -y
echo ""
echo ""
echo "Instalando openjdk-8"
sudo apt install openjdk-8-jdk -y
echo ""
echo ""
echo "Instalando compilador g++"
sudo apt install g++ -y


