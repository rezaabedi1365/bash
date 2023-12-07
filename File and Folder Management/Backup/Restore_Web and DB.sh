# https://mac-blog.org.ua/bash-backup-restore-script/

#!/bin/sh

# Get last backup file names into variables
LAST_WWW_BACKUP=$(ls /home/example/backups/www-*.tar.gz | tail -n 1)
LAST_SQL_BACKUP=$(ls /home/example/backups/db-*.sql | tail -n 1)

# Restore files
/bin/tar -xpzf $LAST_WWW_BACKUP -C /

# Restore database
/usr/bin/mysql -u example --password=example example < $LAST_SQL_BACKUP

# Clear drupal caches
drush -r /home/example/www/ cc all
