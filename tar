# To extract an uncompressed archive:
tar -xvf /path/to/foo.tar

# To create an uncompressed archive:
tar -cvf /path/to/foo.tar /path/to/foo/

# To extract a .gz archive:
tar -xzvf /path/to/foo.tgz
zcat passwd.tar.gz

# To create a .gz archive:
tar -czvf /path/to/foo.tgz /path/to/foo/

# To list the content of an .gz archive:
tar -ztvf /path/to/foo.tgz

# To extract a .bz2 archive:
tar -xjvf /path/to/foo.tgz
bzcat passwd.tar.bz2

# To create a .bz2 archive:
tar -cjvf /path/to/foo.tgz /path/to/foo/

# To list the content of an .bz2 archive:
tar -jtvf /path/to/foo.tgz

# To create a .gz archive and exclude all jpg,gif,... from the tgz
tar czvf /path/to/foo.tgz --exclude=\*.{jpg,gif,png,wmv,flv,tar.gz,zip} /path/to/foo/

# To specify a different directory other than the current working directory
tar -xf file_name.tar -C /target/directory
tar -xf file_name.tar.gz --directory /target/directory

# To find the files needed and compress using tar
find . -name '*file' -mtime +0 -print | tar czvf /path/to/foo.tgz --files-from -
