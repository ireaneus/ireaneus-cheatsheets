[Back](README.md) to README.md

# yum - yellow dog installer
# yum history
[tecmint.com](https://www.tecmint.com/view-yum-history-to-find-packages-info/)

### To install the latest version of a package:
```
yum install <package name>
```

### To perform a local install:
```
yum localinstall <package name>
```

### Working with yum history
```
yum history
yum history info <id>

#  Undo – will undo a specified transaction.
#  redo – repeat the work of a specified transaction
#  rollback – will undo all transactions up to the point of the specified transaction.
```

### To remove a package:
```
yum remove <package name>
```

### To search for a package:
```
yum search <package name>
```

### To find what package installs a program:
```
yum whatprovides </path/to/program>
```

### To find the dependencies of a package:
```
yum deplist <package name>
```

### To find information about a package:
```
yum info <package name>
```

### List currently enabled repositories:
```
yum repolist
```

### List packages containing a certain keyword:
```
yum list <package_name_or_word_to_search>
```

### To download the source RPM for a package:
```
yumdownloader --source <package name>

# (You have to install yumdownloader first, which is installed by the yum-utils package)
```
