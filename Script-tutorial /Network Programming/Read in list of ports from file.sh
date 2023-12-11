#https://github.com/devopshobbies/bash-script-tutorial/blob/session13-net-utils/challenge-twelve/challenge-two.sh

#!/bin/bash
#!/bin/bash
#net tools :))))

# Read in list of ports from file
ports_file="ports.txt"
while IFS= read -r port; do
    #netstat network connection, open ports
    status=$(netstat -an | grep $port | head -n 1 |awk '{ print $6 }')
    echo "The status for port $port is : $status"
done < "$ports_file"
