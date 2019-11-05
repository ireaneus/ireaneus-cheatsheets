# Command line email program
# Install mail-utils
mail -s "Test Subject" user@domain.com < /dev/null

# Send an attachment through mail
mail -a /home/user/Documents/file.1 -s "file sent" user@domain.com < /dev/null

# Send mail to multiple users 
mail -a /home/user/Documents/file.1 -s "file sent" user@domain.com,user2@domain.com < /dev/null


# send an email using echo -e to enable interpretation of backslash escapes
Mail_TO="username@example.com distrolist@example.com"

echo -e "Hello, \n\nService httpd is down on $HOST" | mail -s "Webserver service down on $HOST" $Mail_TO


# Writing an email 
mail user@domain.com
Subject:
Body of message
Body of message
Ctrl+c
Ctrl+d
