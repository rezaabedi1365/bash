menu and select
*use for interactive install

	applist=("nginx" "apache" "Exit")    *define array
	PS3="please select app"
	select PACKAGE in "${applist[@]}"
	do
	   case $PACKAGE in
           	"nginx")
	            apt install -y nginx /dev/nll 2>&1
		    ;;
		"apache"
		    apt install -y apache2 /dev/null 2>&1
		    ;;
		"Exit"
		     break
		     ;;
		 *)
		     echo "invalid option select"
	    esac
	  done

------------------
	select PACKAGE in apache nginx 
	do
	   case $PACKAGE in
		nginx|apache         
		     break
		     ;;
		 *)
		     echo "invalid option select"
	    esac
	  done
         sudo apt install -y $PACKAGE
