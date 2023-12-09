#https://aplicacionesysistemas.com/en/dialog-crear-menus-tus-scripts/

#!/bin/bash
# By Ignacio Alba Obaya
# https://aplicacionesysistemas.com
# run the dialog box by ending 2>/tmp / nombre.tmp. $$ 
# store it in a file name entered.
# remember that 2> redirects the error output to a file.
dialog --title "name" --inputbox "Put your name:" 0 0 2>/tmp / nombre.tmp. $$
# delete the screen
clear
# show the stored name
cat /tmp/nombre.tmp.$$
# delete the file named
rm -f /tmp/nombre.tmp.$$
# We make a line break so that we are not amass the prompt
echo -e "\n"
