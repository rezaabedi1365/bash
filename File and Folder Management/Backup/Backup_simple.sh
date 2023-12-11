# https://mac-blog.org.ua/bash-backup-restore-script/


#!/bin/sh

# Backup www directory to file backup-date  in /home 
/bin/tar -cpzf /home/ backup-`date +%Y-%m-%d`.tar.gz /home/example/www/



# Backup database
/usr/bin/mysqldump --databases -u example --password=example example > /home/example/backups/db-`date +%Y-%m-%d`.sql


# Delete old backups method 1
/usr/bin/find /home/example/backups/ -mtime +30 -delete


# Delete old backups method 2
oldest_BACKUP=$(ls /home/*.tar.gz -t | tail -n 1 )
rm -rf $oldest_BACKUP

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
