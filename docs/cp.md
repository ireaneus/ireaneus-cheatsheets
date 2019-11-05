[Back](README.md) to README.md

# cp

To copy a file only if it is newer than last backup
```
cp -u ~/file1 ~/backup
```

To copy a directory and files
```
cp -R
cp -r
cp --recursive
```

To force a copy
```
cp -f
cp --force
```

To preserve a file's attributes
```
cp -p
```

To copy a single file to multiple files:
```
cat host1 | tee host2 host3
```
