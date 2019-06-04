#!/bin/bash
# Script para la compilación de programas en c. El fichero que se quiere compilar se pasa por línea de comandos
# Ejemplo: $ bash compilarC.sh programa1.c

# Se obtiene el programa de la línea de comandos
programa="$@"

# Se comprueba si se ha introducido por linea de comando el fichero a compilar.
if [ "$programa" = "" ]; then
	echo "************ERROR************"
	echo "No ha introducido ningún programa por linea de comando."
	echo "Pruebe con: bash compilarC.sh nombre_programa.c"
else
	# Se obtienen los ultimos dos caracteres del fichero introducido por línea de comando
	extension=${programa:(-2)}

	# Se comprueba si tiene extension c el fichero introducido por línea de comandos.
	if [ "$extension" = ".c" ]; then
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
	else
		echo "************ERROR************" 
		echo "El fichero que ha introducido no acaba en extension .c"
	fi
fi