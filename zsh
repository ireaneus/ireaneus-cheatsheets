# zsh — real-world examples

Glob qualifiers and expansion tricks — the reason to run zsh (the shell
under Oh My Zsh / Powerlevel10k on the homelab).

## Globbing

```sh
# A plain old glob / recursive glob
print -l *.txt
print -l **/*.txt

# Text files ending in a number from 1 to 10
print -l **/*<1-10>.txt

# Text files starting with the letter a
print -l **/[a]*.txt

# Starting with either ab or bc
print -l **/(ab|bc)*.txt

# NOT starting with a lower or uppercase c
print -l **/[^cC]*.txt
```

## Glob qualifiers

```sh
# Only directories / only regular files
print -l **/*(/)
print -l **/*(.)

# Empty files
print -l **/*(L0)

# Files greater than 3 KB
print -l **/*(Lk+3)

# Modified in the last hour
print -l **/*(mh-1)

# Most recently modified 3 files
print -l **/*(om[1,3])

# Combine: regular files, <2MB, modified in last hour, newest 3
# `.` files, `Lm-2` smaller than 2MB, `mh-1` last hour, `om` sort by mtime
print -l **/*(.Lm-2mh-1om[1,3])

# Every directory that contains a .git directory
print -l **/*(e:'[[ -d $REPLY/.git ]]':)
```

## Homelab one-liners with qualifiers

```sh
# Media files over 4 GB (candidates for re-encoding)
print -l /srv/media/**/*.mkv(Lm+4096)

# Logs untouched for 30+ days
print -l /var/log/**/*.log(md+30)

# Everything owned by david under /srv, newest first
print -l /srv/**/*(u:david:om)
```

## Modifiers (works on globs and variables)

```sh
# File name only (t = tail)
print -l *.txt(:t)

# Name without extension (r = remove extension)
print -l *.txt(:t:r)

# Just the extension
print -l *.txt(:e)

# Parent folder (h = head); stackable
print -l *.txt(:h)
print -l *.txt(:h:h)

# Parent folder of the first match only
print -l *.txt([1]:h)
```

## Parameter expansion

```sh
files=(*.txt)          # store a glob in an array
print -l $files
print -l $files(:h)    # modifier on the glob result
print -l ${files:h}    # modifier via parameter expansion
print -l ${files(:h)}  # DON'T mix the two syntaxes — error
print -l ${files:u}    # :u makes the text uppercase
```

## :s substitution modifier

```sh
variable="path/aaabcd"
echo ${variable:s/bc/BC/}    # path/aaaBCd
echo ${variable:s_bc_BC_}    # path/aaaBCd (any delimiter)
echo ${variable:s/\//./}     # path.aaabcd (escaped slash)
echo ${variable:s_/_._}      # path.aaabcd (more readable)
echo ${variable:s/a/A/}      # pAth/aaabcd (first match only)
echo ${variable:gs/a/A/}     # pAth/AAAbcd (g = all matches)
```

## Split and join flags

```sh
# Split a string at each underscore
file="backup_2026_07.tar"
print -l ${(s._.)file}

# Join an array with a delimiter (opposite of split)
array=(a b c d)
echo ${(j.-.)array}    # a-b-c-d
```
