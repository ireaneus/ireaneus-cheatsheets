#PSSH - parallel ssh is a python based application to ssh into multiple systems
#PSCP - copy files in parallel to multiple systems
#PRSYNC - copies files to multiple hosts in parallel
#PNUKE - kills processes on multiple hosts
#PSLURP - copies files from multiple hosts to a central server

# PSSH requires python-pip
sudo pip install pssh

# PSSH examples
pssh -h pssh-hosts -l root -A -i "uptime"

# To read hosts file, include the -h host_file-name or –hosts host_file_name option.
# To include a default username on all hosts that do not define a specific user, use the -l username or –user username option.
# You can also display standard output and standard error as each host completes. By using the -i or –inline option.
# You may wish to make connections time out after the given number of seconds by including the -t number_of_seconds option.
# To save standard output to a given directory, you can use the -o /directory/path option.
# To ask for a password and send to ssh, use the -A option.

