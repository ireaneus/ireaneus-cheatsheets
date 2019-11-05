
```sh
# The commands below may be run in sequence to generate a self-signed SSL certificate.)
# or use digicert.com wizard
# Note: If you're generating an Apache CSR for a Wildcard certificate, make sure your common name starts with an asterisk (e.g., *.example.com).

# versions of openssl and TLS
openssl ciphers -v | awk '{print $2}' | sort | uniq

# To connect to a web server
openssl s_client connect https://

## Generate files - private and csr keys

# To create a 2048-bit private key:
openssl genrsa -out server.key 2048

# To create the Certificate Signing Request (CSR):
openssl req -new -key server.key -out server.csr


## Order Your SSL/TLS Certificate

Open the .csr file you created with a text editor.
Copy the text, including the -----BEGIN NEW CERTIFICATE REQUEST----- and -----END NEW CERTIFICATE REQUEST----- tags, and paste it in to the DigiCert order form.

## Save private key 
## Install certificate

# To sign a certificate using a private key and CSR:
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

# (The above commands may be run in sequence to generate a self-signed SSL certificate.)


# To show certificate information for a certificate signing request
openssl req -text -noout -in server.csr

# To view certificate expiration:
echo | openssl s_client -connect <hostname>:443 2> /dev/null | \
awk '/-----BEGIN/,/END CERTIFICATE-----/' | \
openssl x509 -noout -enddate

# If you use the 'openssl' tool, this is one way to get extract the CA cert for a particular server:

openssl s_client -connect xxxxx.com:443 |tee logfile
type "QUIT", followed by the "ENTER" key

# 5 top CA companies
Lets Encrypt
Comodo
Symantec
Digicert
GeoTrust
```
