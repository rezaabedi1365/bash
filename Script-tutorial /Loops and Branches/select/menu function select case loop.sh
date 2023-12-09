
#!/bin/bash

echo "application menu install "                           #show prompt before selection
PS3='Choose your application  : '                                    #show prompt after selection

echo

choice_of()
{
select application

do
case $application in 
               
     echo "you select $application"    
     apt install $application                                    #if your return code been with error you fall in the loop   also you must use breake after command
    ;;

     "exit")
      echo "Goodby"
      break
    ;;
  *)
    echo "you select invalid Selection application"
done
}

###call funtion 
choice_of nginx apache2 xrdp mysql exit
//           $1    $2    $3  $4    $5     

exit 0
