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

# Delete old backups method 3  when / disk usege grather than 80%
test $(df -h  / | grep ^/ |  awk '{ print $5 }' | sed 's/.$//') -gt 80  && oldest_BACKUP=$(ls /home/*.tar.gz -t | tail -n 1 ) && rm -rf $oldest_BACKUP

# Delete old backups method 4  when / disk available less than 10 GB
test $(df -h  / | grep ^/ |  awk '{ print $4 }' | sed 's/.$//') -gt 10  && oldest_BACKUP=$(ls /home/*.tar.gz -t | tail -n 1 ) && rm -rf $oldest_BACKUP

# Delete old backups method 5  when direcroty grather than 5 GB
test $(du -hcs /home/ | head -n 1 | awk '{ print $1 }' | sed 's/.$//') -gt 5242880  && oldest_BACKUP=$(ls /home/*.tar.gz -t | tail -n 1 ) && rm -rf $oldest_BACKUP
