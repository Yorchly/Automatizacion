#!/bin/bash
# Script para automatizar la instalación de Apache, Php y mysql (mariaDB) en manjaro.

# Instalando apache
sudo pacman -S apache
sudo systemctl restart httpd

# Instalando mariadb
sudo pacman -S mariadb
sudo chown -R mysql /var/lib/mysql/
sudo chgrp -R mysql /var/lib/mysql/
sudo mysql_install_db --user=mysql --ldata=/var/lib/mysql
sudo systemctl restart mysqld

# Instalando php
sudo pacman -S php php-apache
sudo systemctl restart httpd
echo ""
echo ""
echo "Para terminar la instalacion de LAMP siga los siguientes pasos: "
echo ""
cat terminar_instalacion_LAMP



# Para introducir ficheros en el servidor: /srv/http/


