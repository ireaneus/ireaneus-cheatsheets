yum install nss-pam-ldapd pam_krb5 autofs nfs-utils openldap-clients

authconfig --enableldap --enableldapauth --enablemkhomedir --enableldaptls --ldaploadcacert=http://ldap.linuxacademy.com/pub/cert.pem --ldapserver=ldap.linuxacademy.com --ldapbasedn="dc=linuxacademy,dc=com" --update

export XAUTHORITY=/home/cloud_user/.Xauthority
yum install authconfig-gtk
authconfig-gtk
