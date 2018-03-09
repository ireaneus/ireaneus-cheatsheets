## #!/bin/bash
bash my.sh
chmod +x my.sh
./my.sh


# To include a bash script in another bash script
# config.sh
USERNAME=$USER
EMAIL="dhaines@taos.com"

# main.sh
## #!/bin/bash
# Including config.sh, set filename with proper path.
source config.sh

echo Welcome ${USERNAME}!
echo Your email is ${EMAIL}.


# To implement a for loop:
for file in *;
do 
    echo $file found;
done


# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac

# Turn on debugging:
set -x

# Turn off debugging:
set +x

# Environment echo commands
echo $PATH $HOME $UID $(date) $USER

# Brace Expansion
echo {1..10..2}
1 3 5 7 9

echo {A..Z}
A B C D ..

echo a{A{1,2},B{3,4}}b

# bash cursor movements
ctrl-a	# Move to beginning of line
ctrl-e	# Move to end of line
ctrl-f 	# Move forward one character
ctrl-b	# Move backward one character
alt-f	# Move forward one word
alt-b	# Move backward one word
ctrl-l	# clear screen and move to top left
ctrl-xx	# Move between the beginning of the 
	# line, return to start of line and 
	# change something then back 

# bash delete text
ctrl-d	# Delete character under the cursor
alt-d 	# Delete all characters after the cursor
ctrl-h	# Delet the character before the cursor

# Completion commands
alt-? 	# Display list of possible combos
alt-* 	# Insert all possible completions

# Declare statements
declare -i NEWVAR=123  # Integer only
declare -r NEWVAR="this is readonly"
declare +i NEWVAR="string"
declare -p NEWVAR 	# print
