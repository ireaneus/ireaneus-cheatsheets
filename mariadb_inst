### How to Install and Secure MariaDB 10 in Centos 7
## https://www.tecmint.com/install-mariadb-in-centos-7/

## Add the Mariadb YUM repo file
vim /etc/yum.repos.d/MariaDB.repo

# Centos 7
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

# RHEL 7
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/rhel7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1

## Install MariaDB in Centos 7
yum install MariaDB-server MariaDB-client -y

systemctl start mariadb
systemctl enable mariadb
systemctl status mariadb

## Secure MariaDB in Centos 7
mysql_secure_installation

# remove anonymous users: y
# Disallow root login remotely: y
# remove test database: y
# Reload privilege tables now: y

## login to mariadb
mysql -V
mysqld --print-defaults
mysql -u root -p

## Learn MariaDB Administration
https://www.tecmint.com/learn-mysql-mariadb-for-beginners/
https://www.tecmint.com/learn-mysql-mariadb-advance-functions-sql-queries/
https://www.tecmint.com/gliding-through-database-mysql-in-a-nutshell-part-i/
https://www.tecmint.com/mysqladmin-commands-for-database-administration-in-linux/

https://www.tecmint.com/mysql-mariadb-performance-tuning-and-optimization/
https://www.tecmint.com/mysql-performance-monitoring/
https://www.tecmint.com/how-to-setup-mysql-master-slave-replication-in-rhel-centos-fedora/
https://www.tecmint.com/reset-mysql-or-mariadb-root-password/
https://www.tecmint.com/mysql-mariadb-security-best-practices-for-linux/
https://www.tecmint.com/check-mysql-database-size-in-linux/
