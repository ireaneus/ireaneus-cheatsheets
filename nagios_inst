### How to install Nagios 4.3.4 on RHEL, CentOS
https://www.tecmint.com/install-nagios-in-linux/

# Install required dependencies
yum install -y httpd httpd-tools php gcc glibc glibc-common gd gd-devel make net-snmp

# Create Nagios User and Group
useradd nagios
groupadd nagcmd

usermod -G nagcmd nagios
usermod -G nagcmd apache

# Download Nagios Core 4.3.4 and Nagios Plugin 2.2.1
mkdir /root/nagios
cd /root/nagios

wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.3.4.tar.gz

# Install service check in Nagios
#!/bin/bash
# Nagios Plugin Bash Script - check_service.sh
# This script checks if program is running
# Check for missing parameters
if [[ -z "$1" ]] then
    echo "Missing parameters! Syntax: ./check_service.sh service_name"
    exit 3
fi

if ps ax | grep -v grep | grep $1 > /dev/null
  then
    echo "OK, $SERVICE service is running"
    exit 0
  else
    echo "CRITICAL , $SERVICE service is not running"
    exit 2
fi
