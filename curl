```sh

# Download a single file
curl http://path.to.the/file

# Download a file and specify a new filename
curl http://example.com/file.zip -o new_file.zip

# Download multiple files
curl -O URLOfFirstFile -O URLOfSecondFile

# Download a file and pass HTTP Authentication
curl -u username:password URL

# Download all sequentially numbered files (1-24)
curl http://example.com/pic[1-24].jpg

# Download a file with a Proxy
curl -x proxysever.server.com:PORT http://addressiwantto.access

# Download a file from FTP
curl -u username:password -O ftp://example.com/pub/file.zip

# Get an FTP directory listing
curl ftp://username:password@example.com

# Resume a previously failed download
curl -C - -o partial_file.zip http://example.com/file.zip

# Fetch only the HTTP headers from a response
curl -I http://example.com

# Fetch your external IP and network info as JSON
curl http://ifconfig.me/all/json

# Limit the rate of a download
curl --limit-rate 1000B -O http://path.to.the/file

# Get your global IP
curl httpbin.org/ip

# POST REQUEST - json
curl -d '{"name":"First Lastname","course":"LPIC102"}' httpbin.org/post
curl -H 'Content-Type: application/json' -d '{"name":"John Doe","course":"Linux"}' httpbin.org/post

# POST REQUEST - URL
curl -d 'name=john+doe&course=linux' httpbin.org/post

# Notice that in both the examples, the data is enclosed in single quotes. Using double quotes is okay but it may cause problems if the body also contains double quotes like JSON. Using single quotes is the safer approach.

# POST data in form data format
curl -F "name=John Doe" -F "course=linux"  httpbin.org/post

# Uploading Files - Using curl, you can upload files both as a part of a form field or to a ReST API endpoint. We'll first create a file and then upload it both as a part of a form and to a ReST endpoint.
curl -F "file=@file.txt" httpbin.org/post

# Uploading to a ReST endpoint is similar. We just use the -d flag instead.
curl -d @file.txt httpbin.org/post

# PUT request - ReST APIs use the PUT request to update an existing resource that the server manages. Making a PUT request with curl is similar to making a POST request. Here’s how you’d make a PUT request:
curl -X PUT -d '{"name":"Jane Doe"}' httpbin.org/put


# only print out header
curl -I http://example.com

# DELETE Request - Similarly, ReST APIs use DELETE request to delete an existing resource. Here's how to make a delete request:
curl -X DELETE httpbin.org/delete

# BASIC Authentication
curl -u john:abc123 httpbin.org/basic-auth/john/abc123
curl john:abc123@httpbin.org/basic-auth/john/abc123

# Setting Cookies -b
curl --cookie "name=john;course=linux beginner" httpbin.org/cookies

curl -s google.com | egrep -ci "301 moved" > /dev/null && echo "file has moved"

# Curl supports client- side certificates. All certificates are locked with a pass phrase, which you need to enter before the certificate can be used by curl. The pass phrase can be specified on the command line or if not, entered interactively when curl queries for it. Use a certificate with curl on a HTTPS server like:

 curl --cert mycert.pem https://secure.example.com

# At times you may end up with your own CA cert store and then you can tell curl to use that to verify the server's certificate:

 curl --cacert ca-bundle.pem https://example.com/

curl httpbin.org/ip 

```
