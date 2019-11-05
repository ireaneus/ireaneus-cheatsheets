# To copy a file from your local machine to a remote server:
scp foo.txt user@example.com:remote/dir

# To copy a file from a remote server to your local machine:
scp user@example.com:remote/dir/foo.txt local/dir

# Switches that help with scp
-i scp.pem 	# ssh-key authentication
-r 		# recursive copy entire directories
-v		# verbose print debugging messages
-p		# preserves times and modes
-C		# compression on transport not end to end, will not save time compressing compressed files, ie pictures
-P 4000		# specifies port on remote server open to ssh

# example - copy files from server2 downloads, compress and all subdirectories, preserve times and mods, verbose
[user@server1]$ scp -i server2.pem -P 3003 -Cvpr user2@server2:/home/user2/Downloads .
