#https://github.com/devopshobbies/bash-script-tutorial/blob/session13-net-utils/challenge-twelve/challenge-three.sh

#!/bin/bash
#!/bin/bash
#net tools :))))

# Get port number from user input
echo "Enter a port number:"
read port

#netstat network connection, open ports
num_connections=$(netstat -an | grep $port | wc -l)

echo "Number of connections to port $port: $num_connections"
