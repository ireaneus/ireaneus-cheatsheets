```sh
# Displays everything in the target directory
ls path/to/the/target/directory


# Display everything in directory and subs
ls -lRh path/to/the/parent/directory 	# -l long -R recursive -h human


# Displays everything including hidden files
ls -a

# Displays all files, along with the size (with unit suffixes) and timestamp
ls -lh 

# Display files, sorted by size
ls -S

# Display multiple directories
ls ~ /usr

# Display files sorted by file modification time
ls -lt
ls -lt -r --reverse

ls -1 	# displays only filenames

# Display files sorted by size
ls -lst | sort -n

```
