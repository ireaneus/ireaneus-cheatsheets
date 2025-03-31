# To clear the contents from a file:
truncate -s 0 file.txt

# To truncate a file to 100 bytes:
truncate -s 100 file.txt

# To truncate a file to 100 KB:
truncate -s 100K file.txt

# (M, G, T, P, E, Z, and Y may be used in place of "K" as required.)

# To empty a file
> access.log    # redirect file to null
: > access.log  # empty file using true
true > access.log

cat /dev/null access.log
cp /dev/null access.log
dd if=/dev/null of=access.log
echo -n "" > access.log