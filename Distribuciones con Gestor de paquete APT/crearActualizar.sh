#!/bin/bash
# Script para distribuciones con gestores de paquete APT que crea un fichero con el comando de actualizar y lo pone como herramienta del sistema.
echo "Creando el fichero actualizar.sh"
> actualizar.sh
echo ""
echo "Introduciendo en el fichero comandos para actualizar el sistema."
echo "sudo apt update && sudo apt upgrade -y" >> actualizar.sh #Para uso interactivo se recomienda mas usar apt que apt-get en las versiones mas recientes de ubuntu.
echo ""
echo "Dando permisos al fichero"
sudo chmod u+x actualizar.sh
echo ""
echo "Modificando actualizar.sh a actualizar"
mv actualizar.sh actualizar
echo ""
echo "Introduciendo actualizar en el directorio /usr/local/bin/" #Es uno de los directorios donde se buscan las variables del sistema (para verlos introducir el comando echo $PATH en la terminal)
sudo mv actualizar /usr/local/bin/

