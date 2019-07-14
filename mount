```sh

######  Install samba  ######
# on samba server
yum install samba -y
vim /etc/samba/smb.conf
[share]
browsable = yes
path = /smb
writable = yes

testparm
useradd shareuser
smbpasswd -a shareuser
systemctl start smb
chmod 777 /smb
ls -l /smb


# client
yum install cifs-utils -y
mkdir /mnt/smb
mount -t cifs //10.0.1.100/share /mnt/smb -ousername=shareuser,password=123456
mount | grep cifs
touch /mnt/smb/file.txt
ls -l /mnt/smb/
######  Install samba  ######



######  Install nfs for nfs clients  ########
mkdir /nfs
vim /etc/export
/nfs *(rw)
chmod 777 /nfs
yum install nfs-utils nfs-utils-lib
exportfs -a
systemctl start {rpcbind,nfs-server,rpc-statd,nfs-idmapd}
showmount -e localhost

# Client
yum install nfs-utils -y
showmount -e 10.0.1.101
systemctl start rpcbind
mount -t nfs 10.0.1.101:/nfs /mnt/nfs
touch /mnt/nfs/file1.txt



# To mount / partition as read-write in repair mode:
mount -o remount,rw /

# Bind mount path to a second location
mount --bind /origin/path /destination/path

# To mount Usb disk as user writable:
mount -o uid=username,gid=usergroup /dev/sdx /mnt/xxx

# To mount a remote NFS directory
mount -t nfs example.com:/remote/example/dir /local/example/dir

```
