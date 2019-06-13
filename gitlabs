# To setup a local git lab repository

# On the Git Server
sudo apt-get install git-core
sudo useradd git
passwd git

# On local system
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub | ssh git@remote-server "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"

# Back on Git Server
git@server:~ $ mkdir -p /home/swapnil/project-1.git
cd /home/swapnil/project-1.git
git init --bare
# Initialized empty Git repository in /home/git/git/ocadmin.git/

# On local system
mkdir -p /home/swapnil/git/project
cd /home/swapnil/git/project
git init 
#Initialized empty Git repository in /home/swapnil/git/project
git add .

git commit -m "message" -a
[master (root-commit) 57331ee] message
 2 files changed, 2 insertions(+)
 create mode 100644 GoT.txt
 create mode 100644 writing.txt


# New project
Command line instructions


Git global setup

git config --global user.name "John Doe"
git config --global user.email "johndoe@email.com"

Create a new repository

cd Projects
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder

cd existing_folder
git init
git add .
git commit -m "Initial commit"
git push -u origin master

Existing Git repository

cd existing_repo
git push -u origin --all
git push -u origin --tags
