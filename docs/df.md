[Back](README.md) to README.md

# df - disk free

#### Printout disk free space in a human readable format
```
df -h
```

#### To see FS type
```
df -Th
```

#### Number of files search
```
echo "Detailed Inode usage for: $(pwd)" ; for d in `find -maxdepth 1 -type d |cut -d\/ -f2 |grep -xv . |sort`; do c=$(find $d |wc -l) ; printf "$c\t\t- $d\n" ; done ; printf "Total: \t\t$(find $(pwd) | wc -l)\n"

find . -printf "%h\n" | cut -d/ -f-2 | sort | uniq -c | sort -rn
find / -xdev -printf '%h\n' | sort | uniq -c | sort -k 1 -n
```
