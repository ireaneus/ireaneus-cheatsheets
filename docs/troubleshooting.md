```sh
#################### BOOTING INTO SINGLE USER MODE ######################
#									#
#									#
Boot to GRUB menu - highlight kernel version - press e to edit
Down arrow to the kernel line - linux16
Change the 'ro' argument to 'rw init=/sysroot/bin/sh'
Use Ctrl-x or F10 to reboot
Mount root / 'chroot /sysroot/'
edit /etc/fstab, passwd for root, fsck /dev/sda2-x
reboot system - 'reboot -f'									
#									#
#									#
#################### BOOTING INTO SINGLE USER MODE ######################


#################### BOOTING INTO RUNLEVEL 3  ######################
#
cp /etc/default/grub /etc/default/grub.bak
change linux line at end add space 3
sudo update-grub
#
#################### BOOTING INTO RUNLEVEL 3  ######################


################ /etc/passwd deleted - Get error Login incorrect ########
#### BOOTING INTO SINGLE USER MODE ######
#					#
Reboot into GRUB - press down key - e for edit - highlight kernel - 
type 1 or single after a space - press Enter - b to continue booting.
#					#
#### BOOTING INTO SINGLE USER MODE ######


## /etc/passwd deleted - Get error Login incorrect ##
cp /etc/passwd- /etc/passwd
init 5

/etc/shadow- /etc/gshadow-	# backups of these as well


################# /etc/pam.d/login is deleted - indicator will be login prompt but does not ask password ##
Boot into single user mode
cp /etc/pam.d/system-auth /etc/pam.d/login

################# /etc/inittab file is deleted - Asks what runlevel to run, no processes left in this runlevel ##
First need to boot into Linux Rescue disk and type Linux rescue
chroot /mnt/sysimage			# Local hard drive will be mounted at this location
rpm -q --whatprovides /etc/inittab
mkdir /a
mount /dev/hdc /a			# mount your CD drive

## /etc/pam.d/login is deleted - indicator will be login prompt but does not ask password ##
Boot into single user mode
cp /etc/pam.d/system-auth /etc/pam.d/login

## /etc/inittab file is deleted - Asks what runlevel to run, no processes left in this runlevel ##
First need to boot into Linux Rescue disk and type Linux rescue
chroot /mnt/sysimage	# Local hard drive will be mounted at this location
rpm -q --whatprovides /etc/inittab
mkdir /a
mount /dev/hdc /a	# mount your CD drive
rpm -uvh --force /a/Server/initscripts-8.45.25-1.el5.i386.rpm
exit

## /boot/grub/grub.conf is deleted - Grub is missing ##
type root and 'tab' to find out hard drives - root (hd0,0) press enter
type kernel /v and 'tab' to auto complete - write its entry down
type initrd /i and 'tab' to auto complete - write its entry down
type boot and 'Enter'

Create a /boot/grub/grub.conf file
splashimage=(hd0,0)/grub/splash.xpm.gz
default=0
timeout=5
title Red Hat
root (hd0,0)
kernel /vmlinuz-2.6.18-128.el5
initrd /initrd-26.18-128.el5.img

## fork: Resource temporarily unavailable su - user
# Check total processes
ps -eLf | wc -l		# if above 16384

# edit security limits
vim /etc/security/limits.conf	# increase hard nproc to above ps count
vim /etc/security/limits.d/90-nproc.conf	# increase to same number

## Extend xfs file system

## Extend ext4 file system
sudo lsblk
sudo growpart /dev/sda 1
sudo resize2fs /dev/sda1

## Network interface in VM not binding/pingable
Migrate VM to another host

## Static IP address configs
/etc/sysconfig/network		# Global settings
/etc/sysconfig/network-scripts/	# Interface settings

## Disable NetworkManager
systemctl stop NetworkManager
systemctl disable NetworkManager
service NetworkManager off
service network on
service network restart

#### Execute commands on a remote Linux machine
ssh [USER]@[IP] [command or script]	ssh root@172.16.223.128 ls -l /root
#### Execute commands on a remote Linux machine


#### Run a Linux command after every reboot
$crontab -e
@reboot /home/xyz/myscript.sh
Do remember to enable crond on boot.
#### Run a Linux command after every reboot


#### Comment out hashes in large configuration files
# Here is a small tip for system administrators, who need to tackle large configuration files,
# which include lots of commented lines (marked by #).
# With this tip you can remove all those hashes and provide only an uncommented configuration view for faster lookup into the file.

# If you want to check the configuration file of the Squid proxy server, run the following command:

cat squid.conf | egrep -v ^#

#### Comment out hashes in large configuration files


#### Know your shell
# Here is a command that will let you know about the available shells on your Linux distribution:
chsh -l

# To change your login shell, use the following command:
chsh
#### Know your shell

lspci		#Lists all PCI devices. Use -v for verbose output.
lsusb		#Lists all USB devices. Use -v for verbose output.
lsmod		#Lists the status of modules in the Linux kernel.
lsattr		#Lists file attributes on a second extended Linux file system.
lsof		#Lists the file descriptors opened by all the processes. A very useful command when a process fails to close any file descriptors.
lsb_release -a	#Here is a tip that will let you know the name of the OS, along with other details
dmidecode -t l  # List hardware information
dmidecode -s system-serial-number


#### Run a command as another user ####
/sbin/su -l user --command='service ma restart'

#### View the contents of tar and rpm files
# 1. To view the content of a tar file, issue the following command:

tar -tvf /path/to/file.tar

# 2. To view the content of an rpm file, use the command given below:
rpm -qlp /path/to/file.rpm
#### View the contents of tar and rpm files

#### Auto mounting a partition on Linux
sudo mkdir location_of_dir/name_of_dir
sudo gedit /etc/fstab

# The order should be as follows: the device name, the default mount point, the file-system type, mount options, dump, and the fsck option.

# The device name is the name of the HDD partition (such as /dev/sda5): the mount point is the full path of the directory where the partition is to be mounted.
sudo gedit /etc/fstab 

# The order should be as follows: the device name, the default mount point, the file-system type, mount options, dump, and the fsck option.

# The device name is the name of the HDD partition (such as /dev/sda5): the mount point is the full path of the directory where the partition is to be mounted. 
# The file system type is the type of file system like ext4, fat, ntfs, etc. Mount options are normally given as defaults, while dump and fsck options are given as 0.

# I had a partition /dev/sda5 and I created the directory /media/mydisk. My partition was of type ext4, so to my /etc/fstab, I added the following command:


/dev/sda5 /media/mydisk ext4 defaults 0 0

sudo mount -a
#### Auto mounting a partition on Linux

#### Troubleshooting a stale NFS mount ####
# if df -h is unresponsive try restarting nfs service
umount /mount
umount -f /mount
umount -lf /mount
service stop nfs
service start nfs
umount nfsmount
mount -a
mount -o remount,rw /opt	# if readonly mount exists

#### Working with log files
# insert information about logrotate here

# truncate an active log file
sudo truncate -s 0 ${LOGFILE}

# To install oracle or applications
sudo truncate -s 0 ${LOGFILE]

# and security has locked down /tmp - noexec
#
TEMP=/spacious directory
TMPDIR=/same dir
export TEMP TMPDIR


######  Identify who logged in last locally
lastlog -b 30


######  Problems restarting Apache/httpd service
apachectl start|restart|stop|status|configtest  	# as apache owner
systemctl status httpd -l
journalctl -xe

# clear semiphores
ipcs -s | grep webops | awk ' { print $2 } ' | xargs ipcrm sem

# add entries into sudoers.d files
sudo visudo -f /etc/sudoers.d/web_admin
Cmnd_Alias  WEB = /bin/systemctl restart httpd.service, /bin/systemctl reload httpd.service

gfreeman ALL=WEB


```
