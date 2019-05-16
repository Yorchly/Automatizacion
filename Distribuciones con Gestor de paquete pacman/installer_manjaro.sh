#!/bin/bash
# Bash para ayudar en la instalación de algunas aplicaciones en Manjaro.
echo "¿Desea instalar todos los paquetes sin confirmación? S/n"
read opcion
if [ "$opcion" = "S" ] || [ "$opcion" = "s" ]; then
	echo "Instalando telegram"
	sudo pacman -S --noconfirm telegram-desktop
	echo ""
	echo "Instalando compilador gcc (c++ o c)"
	sudo pacman -S --noconfirm gcc
	echo ""
	echo "Instalando visual studio code"
	sudo pacman -S --noconfirm code
	echo ""
	echo "Instalando Sistema de Control de Version Subversion"
	sudo pacman -S --noconfirm subversion
	echo ""
	echo "Instalando Pycharm community version (Para la profesional hay que ir a su sitio web y descargarse el toolbox del propio JetBrains https://www.jetbrains.com/toolbox/app/ )"
	sudo pacman -S --noconfirm pycharm-community-edition
	echo ""
	echo "Instalando Sublime Text 3"
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	sudo pacman -Syu --noconfirm sublime-text
	echo ""
elif [ "$opcion" = "N" ] || [ "$opcion" = "n" ]; then
	echo "Instalando telegram"
	sudo pacman -S telegram-desktop
	echo ""
	echo "Instalando compilador gcc (c++ o c)"
	sudo pacman -S gcc
	echo ""
	echo "Instalando visual studio code"
	sudo pacman -S code
	echo ""
	echo "Instalando Sistema de Control de Version Subversion"
	sudo pacman -S subversion
	echo ""
	echo "Instalando Pycharm community version (Para la profesional hay que ir a su sitio web y descargarse el toolbox del propio JetBrains https://www.jetbrains.com/toolbox/app/ )"
	sudo pacman -S pycharm-community-edition
	echo ""
	echo "¿Desea instalar sublime text 3? S/n"
	read respuesta_sublime
	if [ "$respuesta_sublime" = "S" ] || [ "$respuesta_sublime" = "s" ]; then
		curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
		echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
		sudo pacman -Syu --noconfirm sublime-text
		echo ""
	fi	
	echo ""
else
	echo "No se ha reconocido la entrada por teclado, saliendo del script..."
fi

