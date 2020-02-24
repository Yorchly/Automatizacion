#!/bin/bash
#!/bin/bash

# Script para distribuciones con gestores de paquete APT que crea un fichero con el comando de actualizar y lo pone como herramienta del sistema.
printf "Introduciendo en el fichero comandos para actualizar el sistema.\n"
printf '#!/bin/bash \n sudo apt update -y \n sudo apt upgrade -y \n sudo apt autoremove -y\n' > actualizar.sh #Para uso interactivo se recomienda mas usar apt que apt-get en las versiones mas recientes de ubuntu.
printf "\n"
printf "Dando permisos al fichero\n"
sudo chmod u+x actualizar.sh
printf "\n"
printf "Modificando actualizar.sh a actualizar\n"
mv actualizar.sh actualizar
printf "\n"
printf "Introduciendo actualizar en el directorio /usr/local/bin/\n" #Es uno de los directorios donde se buscan las variables del sistema (para verlos introducir el comando printf $PATH en la terminal)
sudo mv actualizar /usr/local/bin/

