# https://www.clouvider.com/knowledge_base/backup-basics-and-sample-scripts-in-linux/

#!/bin/bash

# How long script should keep backup?
days=7

# List of directories you want to backup - space separated
backup_files="/home /etc /root /boot"

# Desitnation directory of your backup (it could be a NFS)
dest="/mnt/backup"

# Create archive filename with date
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message when backup script is running
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar (and gzip).
tar czf $dest/$archive_file $backup_files

# Print end status message of backup script.
echo
echo "Backup done"
date

# Delete older backup files older than 7 days

echo "Removing backup older than $days
find $dest -type f -mtime +$days -name '*.tgz' -execdir rm -- '{}' \;
Save this file with name eg. backup.sh and put it into /usr/local/sbin directory

Next, allow execute this script:

$ chmod +x /usr/local/sbin/backup.sh

Now you can
