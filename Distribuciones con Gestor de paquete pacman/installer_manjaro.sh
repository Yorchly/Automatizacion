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
	echo "Instalando Sublime Text 3"
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	sudo pacman -Syu --noconfirm sublime-text
	echo ""
	echo "Instalando toolbox de Jetbrains que contiene Pycharm y otros IDEs como IntelliJ (version 1.14.5179)"
	# Se obtiene el .tar de la pagina web de Jetbrains
	wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.14.5179.tar.gz
	# Se descomprime
	tar -xvf jetbrains-toolbox-1.14.5179.tar.gz
	# Se borra el .tar
	rm jetbrains-toolbox-1.14.5179.tar.gz
	cd jetbrains-toolbox-1.14.5179/
	# Se ejecuta
	./jetbrains-toolbox
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
	echo "¿Desea instalar sublime text 3? S/n"
	read respuesta_sublime
	if [ "$respuesta_sublime" = "S" ] || [ "$respuesta_sublime" = "s" ]; then
		curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
		echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
		sudo pacman -Syu --noconfirm sublime-text
		echo ""
	fi	
	echo ""
	echo "¿Desea instalar toolbox de Jetbrains que contiene Pycharm y otros IDEs como IntelliJ (version 1.14.5179)? S/n"
	read respuesta_toolbox
	if [ "$respuesta_toolbox" = "S" ] || [ "$respuesta_toolbox" = "s" ]; then
		# Se obtiene el .tar de la pagina web de Jetbrains
		wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.14.5179.tar.gz
		# Se descomprime
		tar -xvf jetbrains-toolbox-1.14.5179.tar.gz
		# Se borra el .tar
		rm jetbrains-toolbox-1.14.5179.tar.gz
		cd jetbrains-toolbox-1.14.5179/
		# Se ejecuta
		./jetbrains-toolbox
	fi	
	echo ""
else
	echo "No se ha reconocido la entrada por teclado, saliendo del script..."
fi

