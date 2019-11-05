- [Back](README.md) to README.md

### Linux Academy "How to setup AWS CLI default profile"

[https://linuxacademy.com/howtoguides/20882-how-to-set-aws-cli-default-profile/](https://linuxacademy.com/howtoguides/20882-how-to-set-aws-cli-default-profile/)


THIS IS A BRIEF GUIDE TO SHOW YOU HOW TO USE THE SAME AWS PROFILE EACH TIME, INSTEAD OF HAVING TO TYPE IN YOUR ACCESS KEY AND SECRET KEY OVER AND OVER AGAIN.
```
STEP 1: Login to the AWS Console and select IAM > Users and select your admin user

STEP 2: Click on the Security Credentials tab and click Create Access Key

STEP 3: Click on Download .csv file, download it to your local machine for later use and close the dialog box

STEP 4: Install Python 3.6 from the downloads page of Python.org

STEP 5: Install pip with the commands “curl -O https://bootstrap.pypa.io/get-pip.py” and “python3 get-pip.py –user”

STEP 6: Use pip to install the AWS CLI with the command “pip3 install awscli –upgrade –user”

STEP 7: Add AWS CLI to your command line path by running the command “export PATH=/Users/<username>/Library/Python/3.6/bin:$PATH”

STEP 8: Type “aws –version” to verify that AWS CLI has been installed

STEP 9: Type “aws configure” and enter your AWS Access Key and Secret Access Key using the .csv from STEP 3

STEP 10: Enter your default region name (i.e. us-east-1) and leave the Default output format blank (just hit enter)

STEP 11: Edit your local credential file by typing “vim ~/.aws/credentials

STEP 12: Change the word default (between brackets) to your aws username (i.e. ec2-user), save and quit vim

STEP 13: Export your default profile by typing the command “AWS_DEFAULT_PROFILE=<username>” (i.e. AWS_DEFAULT_PROFILE=ec2-user) and hit enter

STEP 14: Create a public/private SSH key by typing the command “ssh-keygen” and hit Enter

STEP 15: Hit Enter again to save the key in the default location and enter a passphrase for your key (recommended)

STEP 16: Add your key to the ssh agent by typing the command “ssh-agent bash” followed by “ssh-add ~/.ssh/id_rsa”

STEP 17: enter the passphrase you created in STEP 15

DONE!! You have now configured your terminal to communicate with your aws profile and you can login to your EC2 instance with the public key you just created!
```
