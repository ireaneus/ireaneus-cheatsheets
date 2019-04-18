```sh
# To sort a file:
sort file

# To sort a file by keeping only unique:
sort -u file

# To sort a file and reverse the result:
sort -r file

# To sort a file randomly:
sort -R file

# To sort multiple files into a single sorted whole
sort file1.txt file2.txt file3.txt > final_sorted_list.txt

# Sort options
-b	# This option causes sort to ignore leading spaces in lines
-f 	# Makes sorting case insensitive.
-n	# Performs sorting based on the numeric evaluation of a string.
-r	# Sort in reverse order.
-k	# key=field1[,field2] Sort based on a key field located from field1 to field2 rather than the entire line.
-m	# Merge multiple files into a single sorted result without performing any additional sorting.
-o	# Send sorted output to file rather than to standard output.
-t	# Define the field-separator character. By default, fields are separated by spaces or tabs.

# Examples
ls -l /usr/bin | sort -nr -k 5 | head

# to sort by field and keys
sort -n -t. --key=1,4
```