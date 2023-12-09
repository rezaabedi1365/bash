#Reza

#!/bin/bash
echo "install nginx menu"                                  #show prompt before selection
PS3='Choose your OS : '                                    #show prompt after selection
select OS in "Ubuntu" "Centos" "Alpine" "Debian" "Exit"    #use list in select
do 
case $OS in 
    "Ubuntu")                 
     echo "you select ubuntu"    
     apt install nginx                                     #if your return code been with error you fall in the loop   also you must use breake after command
    ;;
    "Centos")
      echo "you select Centos"
      yum install nginx
    ;;
    "Alpine")
      echo "you select Alpine"
      apk add nginx
    ;;
      "Debian")
      echo "you select Debian"
      apt install nginx
    ;;
     "Exit")
      echo "Goodby"
      break
    ;;
  *)
    echo "you select invalid Selection OS"
esac
done

