# To install a package:
rpm -ivh <rpm>

# To remove a package:
rpm -e <package>

# To find what package installs a file:
rpm -qf </path/to/file>

# To find what files are installed by a package:
rpm -ql <package>
rpm -qpl <rpm>

# To find what packages require a package or file:
rpm -q --whatrequires <package>
rpm -q --whatrequires <file>

# To list all installed packages:
rpm -qa

# verify rpm database
cd /var/lib/rpm/
/usr/lib/rpm/rpmdb_verify Packages
mv Packages Packages.bad
/usr/lib/rpm/rpmdb_dump Packages.bad | /usr/lib/rpm/rpmdb_load Packages
/usr/lib/rpm/rpmdb_verify Packages
rpm -qa > /dev/null
rpm -vv --rebuilddb

# Edit /etc/yum.conf to remove the exclusion for httpd:
vim /etc/yum.conf
