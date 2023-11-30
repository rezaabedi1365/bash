#Checks if you are root or not 
if test "`id -u`" -ne 0
	then 
	echo "You need to run this script as root!" 
	exit 
fi
---------------
if [ "`id -u`" != "0" ];then
   echo "This script must be run as root" 1>&2
   exit 1
fi


