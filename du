```sh
# To sort directories/files by size
du -sk *| sort -rn

# To show cumulative humanreadable size
du -sh .	# just the current directory
du -xsh		# x is used to exclude NFS partition within the partition that is being scanned
du -Sm /var/log | sort -rn | sed '{11,$D; =}' | sed 'N; s/\n/ /' | awk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'

# To show calculated total
du -csh
du -ch --max-depth=1 * | egrep 'M|G'	# Will show max directory depth of 1 and grep for Megs and Gigs

# A script for loop to find large file locations
for i in G M K; do du -ah | grep [0-9]$i | sort -nr -k 1; done | head -n 11

# Number of files search
echo "Detailed Inode usage for: $(pwd)" ; for d in `find -maxdepth 1 -type d |cut -d\/ -f2 |grep -xv . |sort`; do c=$(find $d |wc -l) ; printf "$c\t\t- $d\n" ; done ; printf "Total: \t\t$(find $(pwd) | wc -l)\n"

find . -printf "%h\n" | cut -d/ -f-2 | sort | uniq -c | sort -rn
find / -xdev -printf '%h\n' | sort | uniq -c | sort -k 1 -n
```