ssh -D 8080 -f -C -N username@example.com
google-chrome --proxy-server="socks://localhost:8080" &
