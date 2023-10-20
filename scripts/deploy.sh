#!/bin/bash

# Muestra todos los comandos que se van ejecutando
set -x

# Actualizamos los repositorios
apt update

# Actualizamos los paquetes
#apt upgrade -y

# Eliminamos descargas previas del repositorio
rm -rf /tmp/iaw-practica-lamp

# Clonamos el repositorio con el código fuente de la aplicación
git clone https://github.com/josejuansanchez/iaw-practica-lamp.git /tmp/iaw-practica-lamp

# Movemos el código fuente de la aplicación a /var/www/html
mv /tmp/iaw-practica-lamp/src/* /var/www/html