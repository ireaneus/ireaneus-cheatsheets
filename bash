## #!/bin/bash
bash my.sh
chmod +x my.sh
./my.sh


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

# Completion commands
alt-? 	# Display list of possible combos
alt-* 	# Insert all possible completions
