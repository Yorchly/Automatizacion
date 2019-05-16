#!/bin/bash
# Este es un script para facilitar la instalación de mariadb/mysql en manjaro.
sudo pacman -S mariadb
sudo chown -R mysql /var/lib/mysql/
sudo chgrp -R mysql /var/lib/mysql/
sudo mysql_install_db --user=mysql --ldata=/var/lib/mysql
sudo systemctl restart mysqld
clear
echo "Mostrando estado de mysql, si está cargado y activo no ha habido ningún problema durante la instalación"
sudo systemctl status mysqld


