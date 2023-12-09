#Reza

#!/bin/bash

PS3='Choose your web server: ' # Sets the prompt string.                                

echo
select webserver in "nginx" "apache2" 
do
  echo 
  apt install $vegetable
  break  # What happens if there is no 'break' here?
done
exit
