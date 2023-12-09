#https://aplicacionesysistemas.com/en/dialog-crear-menus-tus-scripts/

#!/bin/bash
# By Ignacio Alba Obaya
# https://aplicacionesysistemas.com
# Store the result in a variable dialog
# We create the function fundialog
fundialog = ${fundialog=dialog}
# We create a variable with the output date dialog 
# redireccinando with output dialog --stdout 
# to standard output, Note that the function is between 
# accents of the key [ if not it does not work.
fecha=`$fundialog --stdout --title "Calendar" --calendar "Choose a date" 0 0`
# Show captured date
echo $ date
