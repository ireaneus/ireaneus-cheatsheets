# Command free switches
 -b, --bytes         show output in bytes
 -k, --kilo          show output in kilobytes
 -m, --mega          show output in megabytes
 -g, --giga          show output in gigabytes
     --tera          show output in terabytes
 -h, --human         show human-readable output
     --si            use powers of 1000 not 1024
 -l, --lohi          show detailed low and high memory statistics
 -o, --old           use old format (without -/+buffers/cache line)
 -t, --total         show total for RAM + swap
 -s N, --seconds N   repeat printing every N seconds
 -c N, --count N     repeat printing N times, then exit

     --help     display this help and exit
 -V, --version  output version information and exit

# Top memory usage display
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -5
