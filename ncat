```sh
# Connect mode (ncat is client) | default port is 31337
ncat <host> [<port>]

# Listen mode (ncat is server) | default port is 31337
ncat -l [<host>] [<port>]

# Transfer file (closes after one transfer)
ncat -l [<host>] [<port>] < file

# Transfer file (stays open for multiple transfers)
ncat -l --keep-open [<host>] [<port>] < file

# Receive file
ncat [<host>] [<port>] > file

# Brokering | allows for multiple clients to connect
ncat -l --broker [<host>] [<port>]

# Listen with SSL | many options, use ncat --help for full list
ncat -l --ssl [<host>] [<port>]

# Access control
ncat -l --allow <ip>
ncat -l --deny <ip>

# Proxying
ncat --proxy <proxyhost>[:<proxyport>] --proxy-type {http | socks4} <host>[<port>]

# Chat server | can use brokering for multi-user chat
ncat -l --chat [<host>] [<port>]

# Example using nc - netcat and pv - pipe viewer
# Computer A - 192.168.1.4
tar -zcf - CentOS-7-x86_64-DVD-1503.iso | pv | nc -l -p 5555 -q 5

# Computer B
nc 192.168.1.4 5555 | pv | tar -zxf -

# ncat server sending an echo command to a server on udp/8125
[root@ussrv265 ~]# echo "mycounter:10|c" | ncat -vv uspwhlg02 -u 8125


# Example of nc server and client testing passed

[ansible@ussrv775]$ ncat -v ussrv778 3045
Ncat: Version 7.50 ( https://nmap.org/ncat )
Ncat: Connected to 173.251.216.55:111.
Ncat: 0 bytes sent, 0 bytes received in 0.02 seconds.

```
