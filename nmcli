
nmcli dev status
nmcli con show
nmcli connection show
nmcli con show
nmcli c s

nmcli con down Myoffice1 ; nmcli con up static1
nmcli con show
nmcli con add type ethernet con-name Myhome1 ifname enp0s3
nmcli con add type ethernet con-name static2 ifname enp0s3 ip4 192.168.1.50/24 gw4 192.168.1.1
cat ifcfg-static2
nmcli con mod static2 ipv4.dns “8.8.8.8 8.8.4.4”
nmcli con down static1 ; nmcli con up static2
nmcli con mod static2 connection.autoconnect no

nmcli -f ipv4.dns con show "System eth0"
sudo nmcli con mod "System eth0" ipv4.dns "10.0.0.2"
sudo nmcli con up "System eth0"
cat /etc/resolv.con
host www.google.com
