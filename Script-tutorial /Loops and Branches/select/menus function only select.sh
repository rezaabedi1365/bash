#https://tldp.org/LDP/abs/html/testbranch.html

#!/bin/bash

PS3='Choose your favorite vegetable: '

echo

choice_of()
{
select vegetable
# [in list] omitted, so 'select' uses arguments passed to function.
do
  echo
  echo "Your favorite veggie is $vegetable."
  echo "Yuck!"
  echo
  break
done
}

###call funtion 
choice_of beans rice carrots radishes rutabaga spinach
//           $1    $2    $3      $4       $5       $6

exit 0
