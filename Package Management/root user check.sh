#Checks if you are root or not 
if test "`id -u`" -ne 0
	then 
	echo "You need to run this script as root!" 
	exit 
fi



