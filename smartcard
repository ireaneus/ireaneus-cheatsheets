### For reading smart card devices in Linux
install libusb-1.0-0-dev pcsc-lite pcscd pcsc-tools

## tools installed for smart card readers
opensc-explorer
opensc-tool
pscsc_scan

# use opensc-explorer to see the smartcard
# use opensc-tool -l -n to see the details of the card reader and inserted card
# use pcsc_scan to view the reader and if the pcscd crashed or not, insert or
# remove the card to view the status of the daemon.

# add the smartcard reader module as a Certificate reader

#### Firefox
Preferences -> Privacy & Security -> Certificates
Security Devices...
Select Load -> Name: New PKCS#11 Module
Module Path=/usr/lib/x86_64-linux-gnu/opensc-pkcs11.so
### Loads Device Manager Rocketek RT-SCR1 00 00
Status Logged in
Description 


