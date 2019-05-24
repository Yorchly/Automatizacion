#!/bin/bash
# Script para la compilación de programas en c. El fichero que se quiere compilar se pasa por línea de comandos
# Ejemplo: $ bash compilar.sh programa1.c

# Se obtiene el programa de la línea de comandos
programa="$@"

# Se le quita la extensión c.
programaSinExtension="${programa//.c}"

# Programa extension .exe
programaExtensionExe="$programaSinExtension.exe"

# Se ejecuta el comando de gcc para generar el fichero compilado en formato .exe
gcc -o $programaExtensionExe $programa

echo "¿Desea ejecutar el programa? S/n"
read opcion

if [ "$opcion" = "S" ] || [ "$opcion" = "s" ]; then
	echo "EJECUTANDO PROGRAMA..."
	echo "--------------------------------------------"
	./$programaExtensionExe
fi