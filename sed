```sh
# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt
sed 's/day/night/w' night.txt file.txt
sed '0./day/night/'	# first occurance

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# To remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# To delete lines that begin with a character
sed -i '/^usisi01/d' file
sed -i '/usisi01/d' /etc/fstab		# removes all instances including remarked out entries

# To delete lines from a file
sed -i '$d' file1			# delete last line
sed -i '1d' file1			# delete first line
sed -i 'm,nd' file1			# remove lines from m to n '2,4d' 2 to 4
sed -i '2,4!d' file1			# remove all lines except range

# If you want to create a new file with the deleted entries removed from the original
sed '/usisi01/d' file > newfile

# To replace newlines in multiple lines
sed ':a;N;$!ba;s/\n//g'  file.txt


# viewing the ntp.conf
sed -i.$(date +%F) '/^#/d;/^$/d' /etc/ntp.conf	# -i in place edit creating a backup with date extension formatted  # Delete commented and blank lines

-i[SUFFIX], --in-place[=SUFFIX]		# edit files in place (makes backup if SUFFIX supplied)

```
