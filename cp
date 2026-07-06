# cp — copy files and directories

## Copy only if newer than the destination

```sh
cp -u ~/file1 ~/backup
```

## Copy a directory and its files

```sh
cp -R source/ dest/     # -r and --recursive are equivalent
```

## Force a copy

```sh
cp -f source dest       # --force
```

## Preserve attributes (mode, ownership, timestamps)

```sh
cp -p source dest
cp -a source/ dest/     # archive: -p + recursive + symlinks preserved
```

## One file to multiple destinations

```sh
cat host1 | tee host2 host3
```

## Real-world: quick backup before editing a config

```sh
cp ~/.zshrc{,.bak}      # brace expansion: .zshrc -> .zshrc.bak
```

## Real-world: stage phone photos into the library, newest only

```sh
cp -ruv /run/user/$(id -u)/gvfs/*/DCIM/Camera/ ~/Media/Photos/Phone/
```

## Real-world: interactive + verbose when overwrites matter

```sh
cp -iv important.conf /etc/myapp/
```

| Flag | What it does                          |
| ---- | ------------------------------------- |
| -u   | only if source is newer               |
| -r   | recursive                             |
| -p   | preserve attributes                   |
| -a   | archive (best for full dir copies)    |
| -i   | prompt before overwrite               |
| -v   | verbose                               |
| -f   | force                                 |
