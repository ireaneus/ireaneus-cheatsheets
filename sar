####  sar utilities sysstat  #####
### https://www.thegeekstuff.com/2011/03/sar-examples/ ###

sar           collects and displays ALL system activities statistics.
sadc          stands for “system activity data collector”. This is the sar backend tool that does the data collection.
sa1           stores system activities in binary data file. sa1 depends on sadc for this purpose. sa1 runs from cron.
sa2           creates daily summary of the collected statistics. sa2 runs from cron.
sadf          can generate sar report in CSV, XML, and various other formats. Use this to integrate sar data with other tools.
iostat        generates CPU, I/O statistics
mpstat        displays CPU statistics.
pidstat       reports statistics based on the process id (PID)
nfsiostat     displays NFS I/O statistics.
cifsiostat    generates CIFS statistics.

# sar -u
sar -u                          # Displays CPU usage for the current day that was collected until that point.
sar -u 1 3                      # Displays real time CPU usage every 1 second for 3 times.
sar -u ALL                      # Same as “sar -u” but displays additional fields.
sar -u ALL 1 3                  # Same as “sar -u 1 3” but displays additional fields.
sar -u -f /var/log/sa/sa10      # Displays CPU usage for the 10day of the month from the sa10 file.


# sar -P
sar -P ALL                      # Displays CPU usage broken down by all cores for the current day.
sar -P ALL 1 3                  # Displays real time CPU usage for ALL cores every 1 second for 3 times (broken down by all cores).
sar -P 1                        # Displays CPU usage for core number 1 for the current day.
sar -P 1 1 3                    # Displays real time CPU usage for core number 1, every 1 second for 3 times.
sar -P ALL -f /var/log/sa/sa10  # Displays CPU usage broken down by all cores for the 10day day of the month from sa10 file.

# sar -r                        # Memory free and used
# sar -S                        # Swap stats

## Notes
Use “sar -R” to identify number of memory pages freed, used, and cached per second by the system.
Use “sar -H” to identify the hugepages (in KB) that are used and available.
Use “sar -B” to generate paging statistics. i.e Number of KB paged in (and out) from disk per second.
Use “sar -W” to generate page swap statistics. i.e Page swap in (and out) per second.

# sar -n                        # Network statistics
DEV – Displays network devices vital statistics for eth0, eth1, etc.,
EDEV – Display network device failure statistics
NFS – Displays NFS client activities
NFSD – Displays NFS server activities
SOCK – Displays sockets in use for IPv4
IP – Displays IPv4 network traffic
EIP – Displays IPv4 network errors
ICMP – Displays ICMPv4 network traffic
EICMP – Displays ICMPv4 network errors
TCP – Displays TCPv4 network traffic
ETCP – Displays TCPv4 network errors
UDP – Displays UDPv4 network traffic
SOCK6, IP6, EIP6, ICMP6, UDP6 are for IPv6
ALL – This displays all of the above information. The output will be very long.
