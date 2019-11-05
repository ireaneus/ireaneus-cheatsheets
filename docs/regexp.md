# Regular Expressions
# In some ways, they resemble the shell’s wildcard method of matching file- and pathnames but on a much grander scale. Regular expressions are supported by many command-line tools and by most programming languages to facilitate the solution of text manipulation problems.

# grep [options] regex [file...]
# options
-i	# Ignore case. Do not distinguish between upper- and lowercase characters. --ignore-case.
-v	# Invert match. Normally, grep prints lines that contain a match. This option causes grep to print every line that does not contain a match. --invert-match.
-c 	# Print the number of matches (or non-matches if the -v option is also specified) instead of the lines themselves. --count.
-l	# Print the name of each file that contains a match instead of the lines themselves. --files-with-matches.
-L	# Like the -l option, but print only the names of files that do not contain matches. --files-without-match.
-n	# Prefix each matching line with the number of the line within the file. --line-number.
-h	# For multifile searches, suppress the output of filenames. --no-filename.

# Metacharacters
^ $ . [ ] { } - ? * + ( ) | \

.	# grep -h '.zip' dirlist*.txt 	## Any character bunzip, bzip2
^	# grep -h '^zip' dirlist*.txt	## Regular expression is at beginning of line.
$	# grep -h 'zip$' dirlist*.txt	## Regular expression is at the end of the line.
[]	# grep -h '[bg]zip' dirlist*.txt	## expression is an or statement 'b or g'
[^]	# grep -h '[^bg]zip' dirlist*.txt 	## the remaining characters are taken to be a set of characters that must not be present at the given character position
^[]	# grep -h '^[A-Z]' dirlist*.txt	## entries start with a capital letter

# Regular expression examples
for i in {1..10}; do echo "(${RANDOM:0:3}) ${RANDOM:0:3}-${RANDOM:0:4}" >> phonelist.txt; done
grep -Ev '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' phonelist.txt
(292) 108-518
(129) 44-1379

# Check if a directory (say /home/avi/Tecmint)exist or not? Printf if the said directory exist or not
[ ! -d /home/avi/Tecmint ] && printf '\nno such /home/avi/Tecmint directory exist\n' || printf '\n/home/avi/Tecmint directory exist\n'
	
# Check and do if directory doesn't exist
[ ! -d /home/avi/Tecmint ] && exit

# Brace Expansion
echo Front-{A,B,C}-Back
# Front-A-Back Front-B-Back Front-C-Back
touch  file{1..5}
# file1 file2 file3 file4 file5

[ ! -d /home/avi/Tecmint ] && mkdir /home/avi/Tecmint

find . -regex '.*[^-_./0-9a-zA-Z].*'
locate --regex 'bin/(bz|gz|zip)'

# Using the ! as a logical not
rm !(2.txt) 	# remove all files except 2.txt
rm !(*.pdf)	# remove all files except pdf files

#  grep examples
grep '^lin'     # beginning of line
grep 'my$'      # end of line
grep '^[%*]'    # begins with % or *
grep '^[a-zA-Z]'        # starts with letter
grep '^[^a-zA-Z]'       # don't start with a letter
grep '^.i'              # second letter i 
grep '^%*'              # all * whether or not % is in line
grep '^%\{1,4\}'        # begins with and has 1 or up to 4 %
grep '^1\{1\}'          # matches 1 begins with 1

grep -v -e '^ *#' -e '^$' /etc/httpd/conf/httpd.conf    #-e expression -v not, removes lines with '#' and '$' endofline space
