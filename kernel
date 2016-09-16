# To remove old kernels in /boot.  Recommend to leave 3 in.
sudo uname -r
sudo rpm -q kernel
sudo yum remove kernel-old-version

dpkg --list | grep linux-image
dpkg --list | grep linux-headers

sudo apt-get purge linux-image-3.19.0-{18,20,21}
sudo apt-get purge linux-headers-3.19.0-{18,20,21}
sudo update-grub2

# How to upgrade kernel
apt-cache search linux-kernel
apt-get install linux-image-flavor
