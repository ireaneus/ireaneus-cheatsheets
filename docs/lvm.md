```sh

####  LVM Logical Volume Management for Virtual Machines  ####
#  Take a snapshot prior to starting this
1. Login to vSphere
2. Edit settings on box
3. Examine the settings of the other drive you want to expand, make a note of the
datastore it is on, the Type of disk, if it is Thin, you will want to set your new drive with
the settings listed below:
4. Verify independent and virtual device node match the other drives then finish
5. lsscsi displays scsi id: /dev/sd[x]
####  LVM Logical Volume Management for Virtual Machines  ####


####  Adding a new drive and volume group  ####
lsblk
pvcreate /dev/sdd
vgcreate myvol /dev/sdd
lvcreate -l 100%FREE -n devdisks myvol
lvdisplay
mkfs.ext4 /dev/myvol/devdisks		# ext4 allows for shrinkage of volumes - xfs does not allow it
mkdir /mnt/newvol
blkid /dev/sdd				# copy blkid UUID for /dev/mapper/myvol-devdisks
# edit /etc/fstab
UUID=<blkid#>	/mnt/newvol	ext4	defaults 0 0
mount -a
df -h
####  Adding a new drive and volume group  ####


####  Extending a Physical Volume  ####
fdisk -l
parted -l
cfdisk /dev/sdc
echo "- - -" > /sys/class/scsi_host/host0/scan		# added physical disk
echo 1 > /sys/class/scsci_device/<device>/device/rescan	# added space to existing disk
lsblk			# look for new size
pvresize /dev/sdc

# Resizing a logical volume do above steps and
lvextend -l 100%FREE /dev/mapper/VolumeName
lvextend -L +50G -n /dev/volumename/logicalname
resize2fs or xfs_growfs /dev/VolumeName/LogicalName
####  Extending a Physical Volume  ####


####  Extending a volume group  ####
# create new primary partition in fdisk
# create a new physical volume
pvcreate /dev/sdb1 /dev/sdb2
pvdisplay
vgextend  myVOL /dev/sdb2 
vgdisplay
lvextend /dev/mapper/VolumeName/LogicalName /dev/sdb2
lvdisplay
e2fsck -f /dev/VolumeName/LogicalName
resize2fs /dev/VolumeName/LogicalName
df -h; mount -a; df -h
####  Extending a volume group  ####



####  Extending a Logical group  ####
lvextend -L +200M /dev/VG/LV -r   # to resize
xfs_growfs /mnt/lv


###  For xfs file system (RedHat 7.1 /home)
yum install xfsprogs.x86_64
mount -t xfs /dev/mapper/VolumeName-LogicalName /home
xfs_growfs /home
df -h


###  Remove a bad hdd.
# remove bad drive.
lvremove -f vgAPPS/lv-Vol0				# removes logical volume
vgreduce --removemissing


###  Remove Logical Volume
lvs
vim /etc/fstab
umount /data01
lvchange -an /dev/datavg/testlv
lvremove /dev/datavg/testlv


###  Remove Volume Group
vgchange -an datavg
vgremove datavg


###  Delete physical volume being used by volume group
vgreduce vgAPPS /dev/sdb /dev/sdc
pvremove /dev/sdb /dev/sdc


###  More information
lvs --units m -o devices
parted -l  		# shows size in mb
pvresize /dev/sdc	# if vm disk has been increased

```
