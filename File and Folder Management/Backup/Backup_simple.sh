# https://mac-blog.org.ua/bash-backup-restore-script/

#!/bin/sh

# Backup  directory /root/script/  to file backup-date to /root
/bin/tar -cpzf /root/backup-`date +%Y-%m-%d`.tar.gz /root/scripts/

# Backup database
/usr/bin/mysqldump --databases -u example --password=example example > /home/example/backups/db-`date +%Y-%m-%d`.sql

# Delete old backups
/usr/bin/find /root/ -mtime +30 -delete
