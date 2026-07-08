# for — real-world examples

## Basic loop over a word list

```sh
for i in 1 2 3 4 5 6 7 8 9 10
do
  echo $i
done
```

## Loop over command output

```sh
for var in `ls -alF`
do
  echo $var
done
```

## Loop over all the JPG files in the current directory

```sh
for jpg_file in *.jpg
do
  echo $jpg_file
done
```

## Loop a specified number of times with seq

```sh
for i in `seq 1 10`
do
  echo $i
done
```

## C/C++ style counter loop

```sh
for ((i=1;i<=10;++i))
do
  echo $i
done
```

## Brace expansion counter loop

```sh
for i in {1..10}
do
  echo $i
done
```

## Check uptime across the homelab in one shot

```sh
for h in homelab mediaserver; do
  echo "== $h =="; ssh david@$h uptime
done
```

## Batch-rename: give every .txt a .bak copy

```sh
for f in *.txt; do cp "$f" "$f.bak"; done
```

## Quick status of several systemd services

```sh
for u in plexmediaserver sshd smb; do
  systemctl is-active "$u" | xargs echo "$u:"
done
```
