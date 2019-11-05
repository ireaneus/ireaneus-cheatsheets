- [Back](README.md) to README.md

##  Ansible install and configure
```
yum install python python-pip python-devel openssl git ansible
adduser ansible
passwd ansible
add user ansible to wheel
visudo - %wheel nopasswd
su - ansible
ssh-keygen
ssh-copy-id localhost
adduser ansible nodes
ssh-copy-id nodes
vim /etc/ansible/ansible.cfg
sudo_users root
/etc/ansible/hosts
localhost
```

## Ansible Options
```
-v    --verbose
-i    --inventory=Path          # hosts file
      --private-key=Priv_key_file
-m    --module-name
-M directory                    # loads module directory
-a arguments                    # to pass to module
-k    --ask-pass                # ssh password
-K    --ask-sudo-pass
-o    --one-line
-s    --sudo
-u    --remote_user=
-U    --sudo-user
-c    --connection=             # ssh or local
-l    --limit subset
-l~REGEX                        # limits hosts with regex pattern
```

## Examples from the host file:
```
some_host         ansible_port=2222     ansible_user=manager
aws_host          ansible_ssh_private_key_file=/home/example/.ssh/aws.pem
freebsd_host      ansible_python_interpreter=/usr/local/bin/python
ruby_module_host  ansible_ruby_interpreter=/usr/bin/ruby.1.9.3
```

## ANSIBLE Modules
```
ansible -m setup all            # inventory of all systems
ansible -m ping all             # ping inventory
ansible -m service -a 'name=httpd state=started'
```

## Non SSH connection types:
```
local
```
This connector can be used to deploy the playbook to the control machine itself.

```
docker
```
This connector deploys the playbook directly into Docker containers using the local Docker client. Following parameters are processed by this connector:

```
ansible_host
```
The name of the Docker container to connect to.

```
ansible_user
```
The user name to operate within the container. The user must exist inside the container.

```
ansible_become
```
If set to true the become_user will be used to operate within the container.

```
ansible_docker_extra_args
```
Could be a string with any additional arguments understood by Docker, which are not command specific. This parameter is mainly used to configure a remote Docker daemon to use.

### Here is an example of how to instantly deploy to created containers:
```ruby
- name: create jenkins container
  docker:
    name: my_jenkins
    image: jenkins

- name: add container to inventory
  add_host:
    name: my_jenkins
    ansible_connection: docker
    ansible_docker_extra_args: "--tlsverify --tlscacert=/path/to/ca.pem --tlscert=/path/to/client-cert.pem --tlskey=/path/to/client-key.pem -H=tcp://myserver.net:4243"
    ansible_user: jenkins
  changed_when: false

- name: create directory for ssh keys
  delegate_to: my_jenkins
  file:
    path: "/var/jenkins_home/.ssh/jupiter"
    state: directory
```

### vars playbook
```
--extra-vars "varname1= varname2="
```

### system facts:
```
ansible host -m setup -a 'filter=*ipv4'
```

## Q: What is Ansible Tower?
Ansible is classified as a web-based solution which makes Ansible very easy to use. It is considered to be or acts like a hub for all of your automation tasks. The tower is free for usage till 10 nodes.

## Q: Please define what is Ansible Galaxy?
Ansible Galaxy refers to the website Galaxy where the users will be able to share all the roles to a CLI ( Command Line interface) where the installation, creation, and managing of roles happen

## Q: What does Fact mean in Ansible?
The term “Facts” is commonly used in Ansible environment. They are described in the playbooks areas where it displays known and discovered variables about the system.  Facts are used to implement conditionals executions and also used for getting ad-hoc information of the information.

You can see all the facts via:
```
$ ansible all- m setup
```
