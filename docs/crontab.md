[Back](README.md) to README.md

# Crontab

#### set a shell
```
SHELL=/bin/bash
```
#### crontab format
```
* * * * *  command_to_execute
- - - - -
| | | | |
| | | | +- day of week (0 - 7) (where sunday is 0 and 7)
| | | +--- month (1 - 12)
| | +----- day (1 - 31)
| +------- hour (0 - 23)
+--------- minute (0 - 59)

# example entries
# every 15 min
*/15 * * * * /home/user/command.sh
# every midnight
0 * * * * /home/user/command.sh
# every Saturday at 8:05 AM
5 8 * * 6 /home/user/command.sh
```

#### read the crontab of every user in passwd
```
for user in $(cut -f1 -d: /etc/passwd); do crontab -u $user -l; done
for user in $(cut -f1 -d: /etc/passwd); do echo $user; crontab -u $user -l; done
```

#### schedule a job 
```
@yearly
@monthly
@daily
@reboot
```

#### Redirect mail from cron job
```
MAIL="user"
MAIL=""		# Will stop sending output mail
```

#### Specify PATH variable
```
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/home/user
```

#### Installing a crontab from a cron file, this will remove old crontab entries
```
crontab cron-file.txt
crontab -l user
@reboot CMD
*/10 * * * * /home/user/sysadmin-tasks.sh

# example of /etc/cron.d/stat
MAIL="david"

*/1 * * * * david sh /home/david/bin/stat.sh
```

#### cron.allow and cron.deny
The cron.deny and cron.allow files consist of a list of user names, one user name per line.
These access control files work together as follows:

If cron.allow exists, only the users who are listed in this file can create, edit, display, or remove crontab files.

If cron.allow does not exist, all users can submit crontab files, except for users who are listed in cron.deny.

If neither cron.allow nor cron.deny exists, superuser privileges are required to run the crontab command.

Superuser privileges are required to edit or create the cron.deny and cron.allow files
