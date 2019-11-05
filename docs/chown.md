- [Back](README.md) to README.md

# chown

### Change file owner
```
chown user file
```

### Change file owner and group
```
chown user:group file
```

### Change owner recursively
```
chown -R user directory
```

### Change ownership to match another file
```
chown --reference=/path/to/ref_file file
```

### umask command controls the default permissions given to a file when it is created
```
umask
0022

umask 0000	# resets umask settings

mask	000 000 000 010	# umask 0002
Result	--- rw- rw- r--	

mask	000 000 010 010	# umask 0022
```

### setuid bit (octal 4000) 
When applied to an executable file, it sets the effective user ID 
from that of the real user (the user actually running the program) 
to that of the program’s owner
When an ordinary user runs a program that is setuid root, 
the program runs with the effective privileges of the superuser

```
chmod u+s program
-rwsr-xr-x

```
### the setgid bit (octal 2000)
This, like the setuid bit, changes the effective group ID from that of the real group ID of the user to that of the file owner. If the setgid bit is set on a directory, newly created files in the directory will be given the group ownership of the directory rather the group ownership of the file’s creator. This is useful in a shared directory when members of a common group need access to all the files in the directory, regardless of the file owner’s primary group.

```
chmod g+s directory
drwxrwsr-x

# the sticky bit (octal 1000)
```

On files, Linux ignores the sticky bit, but if applied to a directory, it prevents users from deleting or renaming files unless the user is either the owner of the directory, the owner of the file, or the superuser. This is often used to control access to a shared directory, such as /tmp.

```
chmod +t directory
drwxrwxrwt
```
