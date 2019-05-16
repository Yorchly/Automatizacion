#!/bin/bash
echo "MENU"
echo "1. Iniciar apache y mysql"
echo "2. Parar apache y mysql"
read opcion
if [ "$opcion" = 1 ]; then
	echo "Iniciando apache"
	sudo systemctl start httpd
	echo "Iniciando mysql"
	sudo systemctl start mysqld
else
	echo "Parando apache"
	sudo systemctl stop httpd
	echo "Parando mysql"
	sudo systemctl stop mysqld
fi
