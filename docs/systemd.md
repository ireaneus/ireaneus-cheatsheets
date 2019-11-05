# Display process startup time
systemd-analyze

# Display process startup time at service level
systemd-analyze blame

# List running units
systemctl list-units

# Load a unit at startup
systemctl enable foo.service

# Start or Stop a unit
systemctl <start | stop> foo.service

# Unit file locations
/etc/systemd/system
/usr/lib/systemd/system

#####  Creating a timer service to backup web files - LinuxAcademy Learn Linux by doing
#####  Scheduling a Systemd Service Job with Timer units

-rw-r--r--. 1 root root  176 Jul  6 09:03 web-backup.service
-rwxr-xr-x. 1 root root   92 Jul  6 09:03 web-backup.sh
-rw-r--r--. 1 root root  153 Jul  6 10:12 web-backup.timer

##  [web-backup.service]
[Unit]
Description=Backup the web site, every day, or the boss will be mad

[Service]
Type=simple
ExecStart=/usr/local/sbin/web-backup.sh

[Install]
WantedBy=multi-user.target

##  [web-backup.sh] 
#!/bin/bash

DATE=$(date "+%d")

/bin/tar -czf /root/site-backup-$DATE.tar.gz /var/www/html

##  [web-backup.timer] 
[Unit]
Description=Fire off the backup

[Timer]
OnCalendar=*-*-* 23:00:00
Persistent=true
Unit=web-backup.service

[Install]
WantedBy=multi-user.target

[root@ip-10-0-1-66 ~]# chmod 0755 web-backup.sh
[root@ip-10-0-1-66 ~]# cp web-backup.sh /usr/local/sbin
[root@ip-10-0-1-66 ~]# cp web-backup.{service,timer} /etc/systemd/system
[root@ip-10-0-1-66 ~]# systemctl daemon-reload
[root@ip-10-0-1-66 ~]# systemctl enable web-backup.timer web-backup.service
Created symlink from /etc/systemd/system/multi-user.target.wants/web-backup.timer to /etc/systemd/system/web-backup.timer.
Created symlink from /etc/systemd/system/multi-user.target.wants/web-backup.service to /etc/systemd/system/web-backup.service.
[root@ip-10-0-1-66 ~]# systemctl start web-backup.timer web-backup.service
[root@ip-10-0-1-66 ~]# systemctl status web-backup.timer
● web-backup.timer - Fire off the backup
   Loaded: loaded (/etc/systemd/system/web-backup.timer; enabled; vendor preset: disabled)
   Active: active (waiting) since Sat 2019-07-06 10:20:06 EDT; 13s ago

Jul 06 10:20:06 ip-10-0-1-66.ec2.internal systemd[1]: Started Fire off the backup.
[root@ip-10-0-1-66 ~]# systemctl status web-backup.service
● web-backup.service - Backup the web site, every day, or the boss will be mad
   Loaded: loaded (/etc/systemd/system/web-backup.service; enabled; vendor preset: disabled)
   Active: inactive (dead) since Sat 2019-07-06 10:20:06 EDT; 21s ago
  Process: 4538 ExecStart=/usr/local/sbin/web-backup.sh (code=exited, status=0/SUCCESS)
 Main PID: 4538 (code=exited, status=0/SUCCESS)

Jul 06 10:20:06 ip-10-0-1-66.ec2.internal systemd[1]: Started Backup the web site, every day, or the boss will be mad.
Jul 06 10:20:06 ip-10-0-1-66.ec2.internal web-backup.sh[4538]: /bin/tar: Removing leading `/' from member names
