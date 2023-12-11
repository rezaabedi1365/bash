#https://stackoverflow.com/questions/16661982/check-folder-size-in-bash


#!/bin/bash
# 10GB
SIZE="10"


# check the current size
CHECK="`du -hs /media/662499e1-b699-19ad-57b3-acb127aa5a2b/Aufnahmen`"
CHECK=${CHECK%G*}
echo "Current Foldersize: $CHECK GB"

if (( $(echo "$CHECK > $SIZE" |bc -l) )); then
        echo "Folder is bigger than $SIZE GB"
else
        echo "Folder is smaller than $SIZE GB"
fi

