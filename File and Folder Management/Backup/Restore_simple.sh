# https://mac-blog.org.ua/bash-backup-restore-script/

#!/bin/sh

### Get last backup file names into variables
LAST_WWW_BACKUP=$(ls /home/example/backups/www-*.tar.gz | tail -n 1)
LAST_SQL_BACKUP=$(ls /home/example/backups/db-*.sql | tail -n 1)

      #Sort by modification date
          //ls /home/example/backups/www-*.tar.gz -t | tail -n 1     *sort by time (oldest file)
          //ls /home/example/backups/www-*.tar.gz -tr | tail -n 1     *sort by reverse time (newest file )
      #Sort by last time of access
          //ls /home/example/backups/www-*.tar.gz -u | tail -n 1     *sort by acces time (oldest file)
          //ls /home/example/backups/www-*.tar.gz -ur | tail -n 1     *sort by reverse access  time (newest file )
      #Sort by creation date
          //ls /home/example/backups/www-*.tar.gz -U | tail -n 1     *sort by acces time (oldest file)
          //ls /home/example/backups/www-*.tar.gz -Ur | tail -n 1     *sort by reverse access  time (newest file )
      #Sort by file size
          //ls /home/example/backups/www-*.tar.gz -S | tail -n 1     *sort by size (bigest file)
          //ls /home/example/backups/www-*.tar.gz -Sr | tail -n 1     *sort by reverse time (smaler file )




### Restore files to /
/bin/tar -xpzf $LAST_WWW_BACKUP -C /

    #Restore to current path
//  /bin/tar -xpzf $LAST_WWW_BACKUP 
    

### Restore database
/usr/bin/mysql -u example --password=example example < $LAST_SQL_BACKUP

### Clear drupal caches
drush -r /home/example/www/ cc all
