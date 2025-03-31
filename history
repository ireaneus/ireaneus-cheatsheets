# To see most used top 10 commands:
history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10

# History shortcuts
alt-< 	# Move to beginning of history
alt-> 	# Move to end of history
ctrl-r	# Reverse incremental search
alt-p	# Reverse search, non-incremental
alt-n	# Forward search, non-incremental
ctrl-o	# Execute the current item in the history list and advance to next one

!! 	# Repeat the last command
!#	# Repeat history number item
!string	# Repeat last history starting with string
!?strg	# Repeat history item containing string
!$ 	# Modify last command - ls /home > ls -l /home

# Reviewing commands and their arguments
touch /home/avi/Desktop/1.txt
cp /home/avi/Desktop/1.txt /home/avi/Downloads
echo "1st Argument is : !^"	# 1st argument of last command
echo "2nd Argument is : !cp:2"	# 2nd argument of the last cp command in history
"!*" 	# all arguments, possible syntax "!xyz:*"

# Execute last history items by keyword
ls /home > /dev/null
ls -l /home/avi/ > /dev/null
ls -Al /home/avi/Download > /dev/null

!ls
!ls -l
!ls -Al
