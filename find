```sh

# To find files by case-insensitive extension (ex: .jpg, .JPG, .jpG):
find . -iname "*.jpg"

# To find directories:
find . -type d

# To find files:
find . -type f

# To find files by octal permission:
find . -type f -perm 777

# To find files with setuid bit set:
find . -xdev \( -perm -4000 \) -type f -print0 | xargs -0 ls -l

# To find files with extension '.txt' and remove them:
find ./path/ -name '*.txt' -exec rm '{}' \;

# To find files with extension '.txt' and look for a string into them:
find ./path/ -name '*.txt' | xargs grep 'string'

# To find files with size bigger than 5 Mb and sort them by size:
find . -size +5M -type f -print0 | xargs -0 ls -Ssh | sort -z

# To find files bigger thank 2 MB and list them:
find . -type f -size +20000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'

# To find files modified more than 7 days ago and list file information
find . -type f -mtime +7d -ls

# To find symlinks owned by a user and list file information
find . -type l --user=username -ls

# To search for and delete empty directories
find . -type d -empty -exec rmdir {} \;

# To search for directories named build at a max depth of 2 directories
find . -maxdepth 2 -name build -type d

# To find files and copy them to a new directory in the current directory
find . -maxdepth 1 -name file -exec cp '{}' new1/ \; -print

# To search all files who are not in .git directory
find . ! -iwholename '*.git*' -type f

# Find all files that have the same node (hard link) as MY_FILE_HERE
find . -type f -samefile MY_FILE_HERE 2>/dev/null

# Find commands 
find /path/to/dir -empty -type d -delete
find /path/to/dir -empty -type f -delete
find . -type f -empty | wc -l
find . -type d -empty | wc -l
find . -type f -empty -delete
find /path/to/dir/ -type d -empty -print0 | xargs -0 -I {} /bin/rmdir "{}"
find /path/to/dir -type f | xargs grep -l "foo"
find . -name "*.bak" -type f -print | xargs /bin/rm -f
find . or /directory/ -mmin +10 -type f -exec rm {} \;
find . or /directory/ -mtime +10 -type f -exec rm {} \;
find . /directory/ -size +10000k -exec ls -lh {} \;
find . -type f -printf '%s %p\n'| sort -nr | head -10
find /path/to/search/ -type f -iname "*.mp4" -printf '%s %p\n'| sort -nr | head -10
find -type f -printf "%s %p\n" | sort -rn | head -n 5

# find actions
-delete		# delete currently matching file
-ls		# perform a ls -dils on matching files
-print		# output the full pathname of the matching file
-quit		# quit once a match has been made

# find options
-depth		# direct find to process a directory's files before the directory itself
-maxdepth lvls	# max numver of levels
-mount		# direct find not to traverse directories that are mounted

find /var/log -size +1G -type f -print0 | xargs -0 ls -Ssh | sort -z
find  -type f -exec awk 'BEGIN{stringa=0;stringb=0}/stringa/{stringa++}/stringb/{stringb++}END{if(stringa>0 && stringb>0){print FILENAME}}' {} \;

```
