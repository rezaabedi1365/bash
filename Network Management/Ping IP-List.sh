#!/bin/bash
FILENAME=ip-list.txt
TODAY='date+%Y%m%d'
OUTPUT=/home/ubuntu/log_$HOSTNAME_$today.log

while read LINE
do
    ping -c 1 $LINE > /dev/null
    if [ $? -eq 0 ]
    then
        echo "$LINE is pingable " >> $OUTPUT
    else
        echo "server $LINE is not pingable ,Please check it now" >> $OUTPUT
    fi
done < $FILENAME


  

