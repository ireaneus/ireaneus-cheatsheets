```sh

# Search a file for a pattern
grep pattern file

# Case insensitive search (with line numbers)
grep -in pattern file

# Recursively grep for string <pattern> in folder:
grep -R pattern folder

# Read search patterns from a file (one per line)
grep -f pattern_file file

# Find lines NOT containing pattern
grep -v pattern file

# find words not patterns
grep -w file	# not files

# You can grep with regular expressions
grep "^00" file  #Match lines starting with 00
grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" file  #Find IP add

# Find all files which match {pattern} in {directory}
# This will show: "file:line my research"
grep -rnw 'directory' -e "pattern"

# Exclude grep from your grepped output of ps.
# Add [] to the first letter. Ex: sshd -> [s]shd
ps aux | grep '[h]ttpd'

# Colour in red {bash} and keep all other lines
ps aux | grep -E --color 'bash|$'

# search files for information from a file
grep -f grepinput file1		# grepinput has hello

# egrep for multiple words
egrep -i 'hello.*world' file1	# looks for hello world
egrep -i 'hello|world' file1 	# looks for hello or world in lines
egrep -iv 'hello|world' file1 	# lines that do not contain hello world
egrep -r 'hello|world|friend' file*	# grep or statement 

# fgrep literal pattern
fgrep hello$ file1		# literal line found hello$

# grep to remove cmments and empty lines in config files
grep -v '^#\|^$' /etc/some/conf/file
grep -v -e '^ *#' -e '^$' /etc/httpd/conf/httpd.conf 

# fgrep literal pattern
fgrep hello$ file1		# literal line found hello$

```
