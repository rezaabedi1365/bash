#Checks if you are root or not 
user_check () {
if test "`id -u`" -ne 0
	then 
	echo "You need to run this script as root!" 
	exit 
fi
}
---------------
user_check () {
if [ "`id -u`" != "0" ];then
   echo "This script must be run as root" 1>&2
   exit 1
fi
}

