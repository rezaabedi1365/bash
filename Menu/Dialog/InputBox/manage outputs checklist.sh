# https://aplicacionesysistemas.com/en/dialog-crear-menus-tus-scripts/

#!/bin/bash
# By Ignacio Alba Obaya
# https://aplicacionesysistemas.com

# We created the varaible funcheck in which we store 
# order dialog with the option --separate-output
funcheck =(dialog --separate-output --checklist "Select the groups they belong:" 0 0 0)

# We define the options on the screen
# appear lit the we have put on.
options =(1 "option 1" on 
 2 "option 2" off
 3 "option 3" off
 4 "option 4" off
 5 "option 5" on
 6 "option 6" off
 7 "option 7" off)

# We create the function selections with options running funcheck 
# and forwards the output to the terminal for the next run
# the commands
selections = $("${funcheck[@]}" "${options[@]}" 2>&1 >/dev/tty)

# clean the screen
clear

# add a for loop to run a command function 
# the selections can change the echo by 
# any commands or scripts
for selection in $ selections
do
 $ selection in case
 1)
 echo "You chose the option 1"
 ;;
 2)
 echo "You chose the option 2"
 ;;
 3)
 echo "You chose the option 3"
 ;;
 4)
 echo "You chose the option 4"
 ;;
 5)
 echo "You chose the option 5"
 ;;
 6)
 echo "You chose the option 6"
 ;;
 7)
 echo "You chose the option 7"
 ;;
 esac
done
