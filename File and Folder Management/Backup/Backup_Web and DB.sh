# https://mac-blog.org.ua/bash-backup-restore-script/

#!/bin/sh

# Backup www directory
/bin/tar -cpzf /home/example/backups/www-`date +%Y-%m-%d`.tar.gz /home/example/www/

# Backup database
/usr/bin/mysqldump --databases -u example --password=example example > /home/example/backups/db-`date +%Y-%m-%d`.sql

# Delete old backups
/usr/bin/find /home/example/backups/ -mtime +30 -delete
