# mount
[Back](README.md) to README.md

## Table of Contents
+ [Samba](#install-samba)
+ [NFS](#install-nfs-server)
+ [Mounts](#mount-commands)
+ [Adding Mount](#adding-new-mount)

###  Install samba
#### On samba server
```sh
[root@sambasrv1]# yum install samba -y
[root@sambasrv1]# vim /etc/samba/smb.conf

[share]
browsable = yes
path = /smb
writable = yes
```

```sh
[root@sambasrv1]# testparm
[root@sambasrv1]# useradd shareuser
[root@sambasrv1]# smbpasswd -a shareuser
[root@sambasrv1]# systemctl start smb
[root@sambasrv1]# chmod 777 /smb
[root@sambasrv1]# ls -l /smb
```

#### client
```sh
[root@clientsrv1]# yum install cifs-utils -y
[root@clientsrv1]# mkdir /mnt/smb
[root@clientsrv1]# mount -t cifs //10.0.1.100/share /mnt/smb -ousername=shareuser,password=123456
[root@clientsrv1]# mount | grep cifs
[root@clientsrv1]# touch /mnt/smb/file.txt
[root@clientsrv1]# ls -l /mnt/smb/
```

### Install NFS server
#### NFS Server
```sh 
[root@nfsserv]# mkdir /nfs
[root@nfsserv]# vim /etc/export
/nfs *(rw)

[root@nfsserv]# chmod 777 /nfs
[root@nfsserv]# yum install nfs-utils nfs-utils-lib
[root@nfsserv]# exportfs -a
[root@nfsserv]# systemctl start {rpcbind,nfs-server,rpc-statd,nfs-idmapd}
[root@nfsserv]# showmount -e localhost
```

#### Client Server
```sh
[rrot@server1]# yum install nfs-utils -y
[rrot@server1]# showmount -e 10.0.1.101
[rrot@server1]# systemctl start rpcbind
[rrot@server1]# mount -t nfs 10.0.1.101:/nfs /mnt/nfs
[rrot@server1]# touch /mnt/nfs/file1.txt
```

## Mount commands
### To mount / partition as read-write in repair mode:
```sh
[root@server1]# mount -o remount,rw /
```

### Bind mount path to a second location
```sh
[root@server1]# mount --bind /origin/path /destination/path
```

### To mount Usb disk as user writable:
```sh
[root@server1]# mount -o uid=username,gid=usergroup /dev/sdx /mnt/xxx
```

### To mount a remote NFS directory
```sh
[root@server1]# mount -t nfs example.com:/remote/example/dir /local/example/dir
```

## Adding New Mount
```sh
[root@server1]# lsblk
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
sda      8:0    0  10G  0 disk 
└─sda1   8:1    0  10G  0 part /
sdb      8:16   0  20G  0 disk
```
#### RHEL/CentOS:
```sh
[root@server1]# mkfs.ext4 -m 0 -F -E lazy_itable_init=0,discard /dev/DISK_NAME
```
#### Ubuntu/Debian
```sh
[root@server1]# mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/DISK_NAME
```
```sh
[root@server1]# mkdir -p /MNT_PATH
[root@server1]# mount -o discard,defaults /dev/DISK_NAME /MNT_PATH
[root@server1]# chmod a+w /MNT_PATH
[root@server1]# lsblk
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
sda      8:0    0  10G  0 disk 
└─sda1   8:1    0  10G  0 part /
sdb      8:16   0  20G  0 disk /MNT_PATH

[root@server1]# cp /etc/fstab /etc/fstab.backup
[root@server1]# echo UUID=`sudo blkid -s UUID -o value /dev/DISK_NAME` /MNT_PATH ext4 discard,defaults,nofail 0 2 | tee -a /etc/fstab
[root@server1]# blkid -s UUID -o value /dev/DISK_NAME
[root@server1]# cat /etc/fstab
```
