```sh
# Start tmux:
tmux

# Detach from tmux:
Ctrl-b d

# Restore tmux session:
tmux attach-session -t <target session id>  # use display session to list

# Detach an already attached session (great if you are moving devices with different screen resolutions)
tmux attach -d

# Display session:
tmux ls

# Display windows
Ctrl-b w

# Start a shared session:
tmux -S /tmp/your_shared_session new -s shared
chmod 777 /tmp/your_shared_session
chgrp users /tmp/your_shared_session

# tmux host commands
tmux list-client
tmux detach-client -s shared		# disconnect all sessions attached to shared
tmux detach-client -t /dev/pts/X	# disconnect individual connections

# connect to a shared session
tmux -S /tmp/your_shared_session attach -t shared -r	# read-only

# Help screen (Q to quit):
Ctrl-b ?

# Scroll in window:
Ctrl-b PageUp/PageDown

# Reload configuation file
Ctrl-b : source-file /path/to/file

# Window management
# =================

# Create window:
Ctrl-b c

# Destroy window:
Ctrl-b x

# Kill window:
tmux kill-window t#

# Switch between windows:
Ctrl-b [0-9]
or
Ctrl-b Arrows

# Split windows horizontally:
Ctrl-b %

# Split windows vertically:
Ctrl-b "
```