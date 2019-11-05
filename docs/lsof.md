```bash

# List all IPv4 network files
sudo lsof -i4

# List all IPv6 network files
sudo lsof -i6

# To find listening ports:
lsof -Pnl +M -i4

# To find which program is using the port 80:
lsof -i TCP:80

# List all processes accessing a particular file/directory
lsof </path/to/file>
lsof +D <path/to/files> ie. /var/log

# List all files open for a particular user
lsof -u <username>
lsof -u ^<username>	#not user

# kill all open processes by user
kill -9 `lsof -t -u <user>`

# List all open files by specific process
lsof -p <pid>

# List all files/network connections a given process is using
lsof -c <command-name> -c <command-name>

# List all NFS files used by user 
lsof -N -u <user> -a

```
