#Reza

#!/bin/bash
PS3='Choose your OS "  # Sets the prompt string.'                                
select OS in "Ubuntu" "Centos" "Alpine" "Debian"
do 
case $OS in 
    "Ubuntu|Debian"
     apt install nginx
    ;;
    "Centos"
      yum install nginx
    ;;
    "Alpine"
      apk add nginx
    ;;
  *)
    break;
  esac
done

