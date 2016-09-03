# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file

# Vim Screen Navigation

H 		Go to the first line of current screen
M		Go to the middle line of current screen
L		Go to the last line of current screen
Ctrl+f		Jump forward
:sp filename	horizontal split with another file
:vsp filename	vertical split with another file
Ctrl+w		move between windows
:!<command>	jump out of terminal and execute command

# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars
:r {file}       insert from file
Ctrl+n		insert next word - start typing word and it will fill with next available word
Ctrl+p		insert prev word - start typing word and it will fill with prev available word

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over
.		repeat previous command - if dw press . to delete another word
:set number	shows number lines
:%s/foo/bar/g	Find each occurrence of 'foo' (in all lines), and replace it with 'bar'
:s/foo/bar/g	current line only

# Preceding a motion or edition with a number repeats it n times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42
