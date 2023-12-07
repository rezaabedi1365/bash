# https://mac-blog.org.ua/bash-backup-restore-script/

#!/bin/sh

# Disaplay choose dialog with available backups
CHOSEN_DATE=$(whiptail --title "RESTORE BACKUP" --menu "Chose Backup Date" 20 78 10 `for x in /home/example/backups/*.tar.gz; do echo "$x backup" | sed 's/.*www-\(.*\).tar.gz/\1/'; done` 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
        # Get files and database backup file names
        WWW_BACKUP=$(ls /home/example/backups/www-"$CHOSEN_DATE".tar.gz | tail -n 1)
        SQL_BACKUP=$(ls /home/example/backups/unon-$CHOSEN_DATE.sql | tail -n 1)

        # Restore files
        /bin/tar -xpzf $WWW_BACKUP -C /

        # Restore database
        /usr/bin/mysql -u example --password=example example < $SQL_BACKUP

        # Clear drupal caches
        drush -r /home/example/www/ cc all
fi
