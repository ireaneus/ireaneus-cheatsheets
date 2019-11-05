- [Back](README.md) to README.md

# OpenSuse Leap
Setting up a new Leap desktop

#### Installing Google Chrome Web browser
```
sudo zypper ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
sudo zypper ref     # 'ref' means refresh
```
#### Download Google public key
```
wget https://dl.google.com/linux/linux_signing_key.pub
sudo rpm --import linux_signing_key.pub
```
#### Install stable version
```
sudo zypper in google-chrome-stable     # 'in' means install
```
