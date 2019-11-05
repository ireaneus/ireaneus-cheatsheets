```sh

# To check to see if openssh-server is running on local system
# install netcat a swiss army knife for tcp/ip
nc -v -z 127.0.0.1 22

# To ssh via pem file (which normally needs 0600 permissions):
ssh -i /path/to/file.pem user@example.com

# To connect on an non-standard port:
# Configure openssh config - /etc/ssh/sshd_config - backup original
# Configure OpenSSH banner - Banner /etc/issue.net
## What ports, IPs and protocols we listen for
Port 2222
sudo /etc/init.d/ssh restart	#restarts OpenSSH server
ssh -p 2222 user@example.com

# For more information to protect ssh server:
# http://www.tecmint.com/5-best-practices-to-secure-and-protect-ssh-server/

## To restrict ssh access to specific subnet
# /etc/hosts.allow
sshd : 192.168.0.0/24

# /etc/hosts.deny
sshd : ALL

# To connect and forward the authentication agent
ssh -A user@example.com

# To execute a command on a remote server:
ssh -t user@example.com 'the-remote-command'	# -t force pseudo-tty allocation execute arbitrary screen based apps

# To tunnel an x session over SSH:
ssh -X user@example.com

# Redirect traffic with a tunnel between local host (port 8080) and a remote
# host (remote.example.com:5000) through a proxy (personal.server.com):
ssh -f -L 8080:remote.example.com:80 user@personal.server.com -N
ssh -f cloud_user@remote.server -L 8080:remote.server:80 -N

# To launch a specific x application over SSH:
ssh -X -t user@example.com 'chromium-browser'

# To launch multiple commands to a remote host
ssh user@server1 << EOF
date
hostname
cat /etc/resolv.conf
EOF

# To launch it with sudo access
ssh -t user@server1 << EOF
date
sudo -l 
EOF

# SUDO will not work inside EOF unless it is set up with the NOPASSWD option in sudoers, because your STDIN is not a standard terminal.
# The correct format would be.

ssh server sudo -S shutdown <<EOF
SUDOPASSWORD
EOF

# -S will instruct sudo to get the password from STDIN (in this case the EOF) instead of a terminal. One disadvantage to this is your password will be captured in your session logs if it is set up. You can avoid that by running it inside a script.

SSHPASS="password"
SSHCOMMAND="ssh -p 22 -T -o StrictHostKeyChecking=no -o BatchMode=no"
SSHACCOUNT="xyz@abc.com"
sshpass -p "$SSHPASS" $SSHCOMMAND $SSHACCOUNT << EOF_run_commands
uptime
EOF_run_commands

# To run a bash script on remote host
cat remote-command.bash | ssh user@server1

# on demand ssh socket
systemctl status sshd.socket
sudo at now + 3 minutes
at> systemctl stop sshd.service
at> systemctl start sshd.socket
systemctl status sshd.socket
systemctl enable sshd.socket
systemctl disable sshd.service
ldd /usr/sbin/sshd | grep libwrap
sshd2 sshd : ALL	# /etc/hosts.allow
ALL : ALL		# /etc/hosts.deny

# To create a SOCKS proxy on localhost and port 9999
ssh -D 9999 user@example.com

# -X use an xsession, -C compress data, "-c blowfish" use the encryption blowfish
ssh user@example.com -C -c blowfish -X

# For more information, see:
# http://unix.stackexchange.com/q/12755/44856

# Copy files and folders through ssh from remote host to pwd with tar.gz compression
# when there is no rsync command available
ssh user@example.com "cd /var/www/Shared/; tar zcf - asset1 asset2" | tar zxf -

# To check ssh access from a list of servers
for i in `cat servers.txt`; do echo "### $i ###"; ssh -tq $i 'echo "Yay, I have access"'; done

# To run several sshd daemons copy sshd to a sshd2 
# Use different pam authentication file with the separate daemon

# To ssh without password from one host to another
ssh-keygen
ssh-copy-id server2
ssh server2


```
