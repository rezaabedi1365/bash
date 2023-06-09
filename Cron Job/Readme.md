# Crontab Cheatsheet

![Stargazers over time](https://process.filestackapi.com/cache=expiry:max/resize=width:700/gE30XyppQqyNCnNB4a5c)
-----------------------------------------------------------
# Crontab Commands
    - crontab -e Edit or create a crontab file if doesn’t already exist.
    - crontab -l To Display the crontab file.
    - crontab -r To Remove the crontab file.
    - crontab -v To Display the last time you edited your crontab file. (This option is only available on a few systems.)
    
## Special Char: Comma
###### The Comma is used when creating a list i.e. when we are declaring 2 or more execution times of a command.
```
0,15,25 * * * * /home/user/script.sh
```
## Special Char: Hyphen
###### The Hyphen is used to specify the range of time in which the script can run.
```
0-59 0-23 * * * /home/user/script.sh
```
## Special Char: Forward Slash
###### The Slash is used to create specified intervals of time within a range.
```
*/20 * * * * /home/user/script.sh
```
