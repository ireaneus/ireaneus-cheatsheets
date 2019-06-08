```python

# Desc: Python is a high-level programming language.

# Basic example of server with python
# Will start a Web Server in the current directory on port 8000
# go to http://127.0.0.1:8000

# Python v2.7
python -m SimpleHTTPServer
# Python 3
python -m http.server 8000

# SMTP-Server for debugging, messages will be discarded, and printed on stdout.
python -m smtpd -n -c DebuggingServer localhost:1025

# Pretty print a json
python -mjson.tool


### Python Strings Built-in types
# https://docs.python.org/3/library/stdtypes.html#text-sequence-type-str

### Python for loops 
for i in [1, 2, 3, 4, 5]:
  print(i)

names = ["john", "raj", "lisa"]
for i in names:
  print(i)

for i in range(5):
 print(i)

for i in range(1,6,2):
  print(i)

names = ["john", "lisa", "raj", "lisa"]
for i in names:
  if i != "lisa":
    continue
  print(i)
print("--end--")

names = ["john", "lisa", "raj", "lisa"]
for i in names:
  if i == "raj":
    break
  print(i)
else:
  print("for loop condition failed!")
print("--end--")

# Simple print
print("Hello World")

# import modules/functions
import os
import sys
import argparser

### Running python scripts
#!/usr/bin/env python 3.6
[root@server1] python3 for1.py
#chmod u+x for1.py

### troubleshooting using doctest
python3.7 -m doctest -v tasker.py

### setting up pipenv and installing flask
pipenv --python=$(which python3.7) install flask
pipenv shell
(projectname)[root@server1]	#pipenv shell available across ssh

### Setting up flask webserver environment
(tickets) [cloud_user@ip-10-0-1-129 tickets]$ export FLASK_ENV=development
(tickets) [cloud_user@ip-10-0-1-129 tickets]$ export FLASK_APP='.'
(tickets) [cloud_user@ip-10-0-1-129 tickets]$ flask run --host=0.0.0.0 --port=3000
 * Serving Flask app "." (lazy loading)
 * Environment: development
 * Debug mode: on
 * Running on http://0.0.0.0:3000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 332-333-866


```
