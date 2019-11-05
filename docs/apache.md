[Back](README.md) to README.md

# Apache

#### 3 Ways to Check Apache Server Status and Uptime in Linux
[https://www.tecmint.com/check-apache-httpd-status-and-uptime-in-linux/](https://www.tecmint.com/check-apache-httpd-status-and-uptime-in-linux/)

#### How to setup free SSL certificate for Apache on Debian 10
[https://www.tecmint.com/setup-free-ssl-certificate-for-apache-on-debian-10/](https://www.tecmint.com/setup-free-ssl-certificate-for-apache-on-debian-10/)


```
$ sudo systemctl status apache2		# Debian/Ubuntu 
$ systemctl status httpd		# RHEL/CentOS/Fedora

```
### Apachectl Utilities
```
$ sudo vi /etc/apache2/mods-enabled/status.conf
	<Location /server-status>
		SetHandler server-status
		Require local
		# Require ip 192.0.2.0/24
	</Location>

vi /etc/httpd/conf.d/server-status.conf
	<Location "/server-status">
		SetHandler server-status
		#Require  host  localhost	#uncomment to only allow requests from localhost 
	</Location>

systemctl restart httpd

apachectl status
http://localhost/server-status
ps -eo comm,etime,user | grep root | grep httpd

```
