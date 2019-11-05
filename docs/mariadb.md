## Reset root password in mariadb
systemctl stop mariadb

mysqld_safe --skip-grant-tables &

mysql -u root

MariaDB[(none)]> use mysql;

MariaDB[(none)]> update user set password=PASSWORD("NewPassword") where User='root';

MariaDB[(none)]> flush privileges;

MariaDB[(none)]> exit;

systemctl restart mariadb

mysql -u root -p

