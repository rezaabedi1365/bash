 file_exists() {
   if [ -f "$1" ]; then
       echo "file exists"
   else
       echo "Error : not found"
       error_message "error"
   fi
   cat doesnt_exist &> /dev/null
   echo $?
 }
