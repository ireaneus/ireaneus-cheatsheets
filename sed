# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# To remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# To replace newlines in multiple lines
sed ':a;N;$!ba;s/\n//g'  file.txt

# Examples of sed
sed -n '1,5p' distros.txt	# Lines 1-5 are printed -n stops sed from printing entire file
sed -n '/SUSE/p' distros.txt	# Lines with SUSE printed
sed -n '/SUSE/!p' distros.txt 	# Lines without SUSE printed

###  http://sed.sourceforge.net/sed1line.txt
FILE SPACING:

# double space a file
sed G

# double space a file which already has blank lines in it. Output file
# should contain no more than one blank line between lines of text.
sed '/^$/d;G'

# triple space a file
sed 'G;G'

# undo double-spacing (assumes even-numbered lines are always blank)
sed 'n;d'

# insert a blank line above every line which matches "regex"
sed '/regex/{x;p;x;}'

# insert a blank line below every line which matches "regex"
sed '/regex/G'

# insert a blank line above and below every line which matches "regex"
sed '/regex/{x;p;x;G;}'

NUMBERING:

# number each line of a file (simple left alignment). Using a tab (see
# note on '\t' at end of file) instead of space will preserve margins.
sed = filename | sed 'N;s/\n/\t/'

# number each line of a file (number on left, right-aligned)
sed = filename | sed 'N; s/^/     /; s/ *\(.\{6,\}\)\n/\1  /'

# number each line of file, but only print numbers if line is not blank
sed '/./=' filename | sed '/./N; s/\n/ /'

# count lines (emulates "wc -l")
sed -n '$='

SELECTIVE PRINTING OF CERTAIN LINES:

# print first 10 lines of file (emulates behavior of "head")
sed 10q

# print first line of file (emulates "head -1")
sed q

# print the last 10 lines of a file (emulates "tail")
sed -e :a -e '$q;N;11,$D;ba'

# print the last 2 lines of a file (emulates "tail -2")
sed '$!N;$!D'

# print the last line of a file (emulates "tail -1")
sed '$!d'                    # method 1
sed -n '$p'                  # method 2

# print the next-to-the-last line of a file
sed -e '$!{h;d;}' -e x              # for 1-line files, print blank line
sed -e '1{$q;}' -e '$!{h;d;}' -e x  # for 1-line files, print the line
sed -e '1{$d;}' -e '$!{h;d;}' -e x  # for 1-line files, print nothing

# print only lines which match regular expression (emulates "grep")
sed -n '/regexp/p'           # method 1
sed '/regexp/!d'             # method 2

# print only lines which do NOT match regexp (emulates "grep -v")
sed -n '/regexp/!p'          # method 1, corresponds to above
sed '/regexp/d'              # method 2, simpler syntax

# print the line immediately before a regexp, but not the line
# containing the regexp
sed -n '/regexp/{g;1!p;};h'

# print the line immediately after a regexp, but not the line
# containing the regexp
sed -n '/regexp/{n;p;}'

# print 1 line of context before and after regexp, with line number
# indicating where the regexp occurred (similar to "grep -A1 -B1")
sed -n -e '/regexp/{=;x;1!p;g;$!N;p;D;}' -e h

# grep for AAA and BBB and CCC (in any order)
sed '/AAA/!d; /BBB/!d; /CCC/!d'

# grep for AAA and BBB and CCC (in that order)
sed '/AAA.*BBB.*CCC/!d'

# grep for AAA or BBB or CCC (emulates "egrep")
sed -e '/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d    # most seds
gsed '/AAA\|BBB\|CCC/!d'                        # GNU sed only

# print paragraph if it contains AAA (blank lines separate paragraphs)
# HHsed v1.5 must insert a 'G;' after 'x;' in the next 3 scripts below
sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;'

# print paragraph if it contains AAA and BBB and CCC (in any order)
sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;/BBB/!d;/CCC/!d'

# print paragraph if it contains AAA or BBB or CCC
sed -e '/./{H;$!d;}' -e 'x;/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d
gsed '/./{H;$!d;};x;/AAA\|BBB\|CCC/b;d'
# GNU sed only

# print only lines of 65 characters or longer
sed -n '/^.\{65\}/p'

# print only lines of less than 65 characters
sed -n '/^.\{65\}/!p'        # method 1, corresponds to above
sed '/^.\{65\}/d'            # method 2, simpler syntax

# print section of file from regular expression to end of file
sed -n '/regexp/,$p'

# print section of file based on line numbers (lines 8-12, inclusive)
sed -n '8,12p'               # method 1
sed '8,12!d'                 # method 2

# print line number 52
sed -n '52p'                 # method 1
sed '52!d'                   # method 2
sed '52q;d'                  # method 3, efficient on large files

# beginning at line 3, print every 7th line
gsed -n '3~7p'               # GNU sed only
sed -n '3,${p;n;n;n;n;n;n;}' # other seds

# print section of file between two regular expressions (inclusive)
sed -n '/Iowa/,/Montana/p'             # case sensitive
