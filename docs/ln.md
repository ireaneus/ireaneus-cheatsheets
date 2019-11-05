```sh

# Symlink, while overwriting existing destination files
ln -sf /some/dir/exec /usr/bin/exec

# To create a symlink:
$ cd /home/chris/lib 
$ ln -s /home/chris/src/library.so library.so
$ ls -l library.so
lrwxrwxrwx  1 chris chris       21 2010-09-18 07:23 library.so -> /home/chris/src/library.so

# ln sybolic link for a directory
$ mkdir /home/chris/obj
$ cd tmp
$ ln -s /home/chris/obj objects
$ ls -l objects
lrwxrwxrwx 1 chris chris       6 2010-09-19 16:48 objects -> /home/chris/obj

# ln hard link - more than one file name references same inode number
ln /full/path/of/original/file /full/path/of/hard/link/file
ln src_original.txt dst_link.txt

# Create Links across different partitions
mount /dev/sda5 /mnt
cd /mnt
ls
main.c Makefile

ln Makefile /tmp/Makefile
ln: creating hard link `/tmp/Makefile' to `Makefile': Invalid cross-device link

ln -s Makefile /tmp/Makefile

# Create Link using "No-Diference" ln command option
# Following example create soft link inside a directory
$ mkdir example
$ ln -s /etc/passwd example

$ cd example/
lrwxrwxrwx 1 root root 16 2010-09-19 17:24 passwd -> /etc/passwd

# In case the “example” directory in the above code-snippet is a 
# symbolic link pointing to some other directory (for example second-dir),
# the ln command shown will still create the link under second-dir. 
# If you don’t want that to happen, use ln -n option as shown below.
$ rm -rf example
$ mkdir second-dir

$ ln -s second-dir example

$ ln -n -s /etc/passwd example
ln: creating symbolic link `example': File exists

# Create Link for Multiple files at the same time
$ ls
first-dir second-dir

$ ls first-dir
ex1.c  ex2.c

$ cd second-dir
$ ln -s ../first-dir/*.c -t .

$ ls -l
lrwxrwxrwx 1 chris chris 14 2010-09-19 15:20 ex1.c -> ../first-dir/ex1.c
lrwxrwxrwx 1 chris chris 14 2010-09-19 15:20 ex2.c -> ../first-dir/ex2.c

# Keep in mind that whenever you are creating link files with -t option, 
# it is better to go into target directory and perform the link creation process. 
# Otherwise, you would face the broken link files as shown below.
$ cd first-dir

$ ln -s *.c /home/chris/second-dir

$ cd /home/chris/second-dir
$ ls -l
lrwxrwxrwx 1 chris chris 5 2010-09-19 15:26 ex1.c -> ex1.c
lrwxrwxrwx 1 chris chris 5 2010-09-19 15:26 ex2.c -> ex2.c

# Removing original file when a soft link is pointing to it
$ ln -s file.txt /tmp/link

$ ls -l /tmp/link
lrwxrwxrwx 1 chris chris 9 2010-09-19 15:38 /tmp/link -> file1.txt

$ rm file.txt

$ ls -l /tmp/link
lrwxrwxrwx 1 chris chris 9 2010-09-19 15:38 /tmp/link -> file1.txt

# Links help increase partition size
$ mkdir /mnt/logs

$ cd /logs

$ mv * /mnt/logs

$ cd /; rmdir logs

$ ln -s /mnt/logs logs


# Remove the Hard Linked files
ln src_original.txt dst_link.txt
rm src_original.txt
cat dst_link.txt

# Credit to The Geek Stuff
# https://www.thegeekstuff.com/2010/10/linux-ln-command-examples/

# To create a symlink:
ln -s path/to/the/target/directory name-of-symlink

# Symlink, while overwriting existing destination files
ln -sf /some/dir/exec /usr/bin/exec

```
