# bash — scripting and readline survival kit

## Executing bash scripts

```sh
#!/usr/bin/env bash
bash my.sh          # run with bash explicitly
chmod +x my.sh
./my.sh             # run via shebang
```

## Include one script in another

```sh
# config.sh
USERNAME=$USER
EMAIL="username@example.com"

# main.sh
#!/bin/bash
source config.sh
echo Welcome ${USERNAME}!
echo Your email is ${EMAIL}.
```

## for loop

```sh
for file in *.log; do
    echo "$file found"
done

# C-style
for ((i=1; i<=5; i++)); do echo "run $i"; done
```

## case statement

```sh
case "$1" in
    0)  echo "zero found";;
    1)  echo "one found";;
    2)  echo "two found";;
    3*) echo "something beginning with 3 found";;
    *)  echo "no match";;
esac
```

## Debugging

```sh
set -x    # turn on debugging
set +x    # turn off debugging
bash -x my.sh
```

## Brace expansion

```sh
echo {1..10..2}      # 1 3 5 7 9
echo {A..Z}          # A B C D ...
echo a{A{1,2},B{3,4}}b
mkdir -p Projects/{docker,bash,ansible}
```

## History replacement

```sh
ls anaconda-ks.cfg
vi !!:$              # last argument of previous command
cp anaconda-ks.cfg anaconda-ks.bak
vi !^                # first argument of previous command
!grep                # re-run the last grep command
```

## Cursor movement

| Keys    | Action                            |
| ------- | --------------------------------- |
| ctrl-a  | beginning of line                 |
| ctrl-e  | end of line                       |
| ctrl-f  | forward one character             |
| ctrl-b  | backward one character            |
| alt-f   | forward one word                  |
| alt-b   | backward one word                 |
| ctrl-l  | clear screen                      |
| ctrl-xx | jump to line start and back again |

## Delete / undo

| Keys   | Action                                   |
| ------ | ---------------------------------------- |
| ctrl-d | delete char under cursor                 |
| ctrl-w | delete word backwards                    |
| ctrl-u | delete to beginning of line              |
| ctrl-k | delete to end of line                    |
| alt-d  | delete word forward                      |
| ctrl-h | delete char before cursor                |
| ctrl-y | paste back what ctrl-w/k/u deleted       |

## declare and export

```sh
declare -i NEWVAR=123                  # integer only
declare -r NEWVAR="this is readonly"
declare -p NEWVAR                      # print

MYVAR="value"
export MYVAR                           # visible to child processes/scripts
```

## Real-world: remote health check across servers

```sh
#!/bin/bash
# remote_check.sh — memory, CPU, TCP connections, kernel
server_name=$(hostname)

memory_check() { echo "Memory on ${server_name}:"; free -h; }
cpu_check()    { echo "CPU load on ${server_name}:"; uptime; }
tcp_check()    { echo "TCP connections on ${server_name}:"; cat /proc/net/tcp | wc -l; }
kernel_check() { echo "Kernel on ${server_name}:"; uname -r; }

memory_check; cpu_check; tcp_check; kernel_check
```

```sh
# Run it on every server in a list, no copying needed
for server in $(cat servers.txt); do
    ssh david@${server} 'bash -s' < ./remote_check.sh
done
```

## Real-world: safe script boilerplate

```sh
#!/usr/bin/env bash
set -euo pipefail    # die on error, unset vars, and pipe failures
```
