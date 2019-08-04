```sh

#########  Installation methods  ############
# https://get.docker.com/	# script to install
# https://github.com/docker/docker-install

## Installation Centos
# uninstall previous version of Docker

sudo yum remove -y docker \
> docker-client \
> docker-client-latest \
> docker-common \
> docker-latest \
> docker-latest-logrotate \
> docker-logrotate \
> docker-engine

# Add utilities for Docker

sudo yum install -y yum-utils \
> device-mapper-persistent-data \
> lvm2

sudo yum-config-manager \
> --add-repo \
> https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE:
sudo yum -y install docker-ce
sudo systemctl start docker && sudo systemctl enable docker
sudo usermod -aG docker cloud_user
#########  Installation methods  ############


#########  Docker Commands  ##########
docker -h | more
Usage:	docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/home/cloud_user/.docker")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level ("debug"|"info"|"warn"|"error"|"fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/home/cloud_user/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/home/cloud_user/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/home/cloud_user/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  builder     Manage builds
  config      Manage Docker configs
  container   Manage containers
  engine      Manage the docker engine
  image       Manage images
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

# Example of using management commands
docker image ls --help
Usage:	docker image ls [OPTIONS] [REPOSITORY[:TAG]]

List images

Aliases:
  ls, images, list

Options:
  -a, --all             Show all images (default hides intermediate images)
      --digests         Show digests
  -f, --filter filter   Filter output based on conditions provided
      --format string   Pretty-print images using a Go template
      --no-trunc        Dont truncate output
  -q, --quiet           Only show numeric IDs

####  docker image:  ####

build 			# Build an image from a dockerfile
history 		# Show the history of an image
import 			# Import the contents from a tarball to create a filesystem image
inspect 		# Display detailed information on one or more images
load 			# Load an image from a tar file or STDIN
ls 			# List images
prune 			# Remove unused images
pull 			# Pull an image or a repository from a registry
push 			# Push an image or a repository to a registry
rm 			# Remove one or more images
save 			# Save one or more images to a tar file (streamed to STDOUT by default)
tag 			# Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

####  docker image:  ####

####  docker container:  ####

attach 			# Attach local standard input, output, and error streams to a running container
commit 			# Create a new image from a container's changes
cp 			# Copy files/folders between a container and the local filesystem
create 			# Create a new container
diff 			# Inspect changes to files or directories on a container's filesystem
exec 			# Run a command in a running container
export 			# Export a container's filesystem as a tar archive
inspect 		# Display detailed information on one or more containers
kill 			# Kill one or more running containers
logs 			# Fetch the logs of a container
ls 			# List containers
pause 			# Pause all processes within one or more containers
port 			# List port mappings or a specific mapping for the container
prune 			# Remove all stopped containers
rename 			# Rename a container
restart 		# Restart one or more containers
rm 			# Remove one or more containers
run 			# Run a command in a new container
start 			# Start one or more stopped containers
stats	 		# Display a live stream of container(s) resource usage statistics
stop  			# Stop one or more running containers
top			# Display the running processes of a container
unpause			# Unpause all processes within one or more containers
update			# Update configuration of one or more containers
wait 			# Block until one or more containers stop, then print their exit codes

####  docker container:  ####

#########  Docker Commands  ##########


#########  building a new docker image  #########

#### Dockerfile
FROM ubuntu:16.04
LABEL maintainer="username@example.com"
RUN apt-get update
RUN apt-get install -y python3
#### Dockerfile

docker build -t <username>/<repository> .
# intermediate container images per run statement

#### Dockerfile
FROM debian:stable
MAINTAINER latest123 <latest123@linuxacademy.com>

RUN apt-get update -y && apt-get upgrade -y && apt-get install python python-pip apache 2 elinks openssh-server -y
ENV MYVALUE my-value

EXPOSE 80
EXPOSE 22

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

#########  building a new docker image  #########

## Docker Lifecycle
docker run 		# starts docker container runs it and stops it
docker run -it		# -i Keep STDIN open even if not attached; -t Allocate a pseudo-tty
docker container start	# starts and runs a detached session
docker restart <containerid/name>
docker attach		# attaches to running docker
docker attach <imagename> 		# ctrl+c will exit the container
docker stop <imagename>

####  docker commands  ####
# docker run 	# https://docs.docker.com/engine/reference/run/
docker images
docker image ls
docker images --no-trunc
docker run ubuntu:16.04
docker run -d				# Detached mode
docker run -d -rm			# the container is removed when exits
docker run --name <uuid long> <uuid short> <Name>
docker container run hello-world
docker container run -it --name python-container <a3> #IMAGE ID
docker container ls -a 		# active status
docker container ps -a		# Container IDs
docker container start <container id/name>
docker attach <uniq start container id/name>
docker image history nginx	# expose
docker container exec -it <containerID> ls /usr/share/nginx/html
docker container exec -it <containerID> /bin/bash

####  docker commands  ####


####  Docker container Logging  ####
# https://12factor.net/logs
# https://docs.python.org/2/howto/logging.html
docker container ls -a
docker container logs <containerID>
####  Docker container Logging  ####


####  Docker container management  ####

docker container rm <container id/name>
docker container ls -a
docker images
docker rmi <id>
docker rmi -f docker/whalesay		# removes docker image forces
docker rm `docker ps -a -q`		# removes all old ran images
docker system purge			# remove images, containers, volumes and networks
docker system purge -a			# remove all unused and stopped containers
docker images purge			# 

####  Docker container management  ####

### Pushing docker images to DockerHub
docker login		#username and password "Warning password"
docker images
docker tag <ImageID> username/repository:tag
docker images
docker push username/repository
docker pull username/repository:tag
docker container top <name>
docker container stats <name>


####  docker ports  ####
# Exposing ports
docker container run -d --expose 3000 nginx	# port 80 and 3000 exposed, nothing mapped to 3000

# publishing ports
docker container run -d --expose 3000 -p 80:3000 nginx	# 80/tcp, 0.0.0.0:80->3000/tcp, nothing mapped locally on 3000
docker container run -d --expose 3000 -p 8080:80 nginx	# curl localhost:8080
docker container run -d -P nginx		# Assigns random localhost port 0.0.0.0:32768->80/tcp
docker container port <container id> 		# lists all open ports on the container

curl -4 icanhazip.com		# shows external IP address
docker container inspect <containerid> | grep IPAdd
docker inspect <container> | grep -i ipaddress
docker run -d --name=WebServer1 -P nginx:latest 
docker container ls
docker container run -d -p 80:80 httpd
elinks external ip
docker ps 32770->/443 32771->80
docker port WebServer1 $CONTAINERPORT
docker run -d -p 8080:80 8443:443 --name=WebServer2 nginx:latest
elinks localhost:8080
####  docker ports  ####


### docker container volumes
docker volume ls
docker volume create devvolume
docker volume inspect devvolume
docker container run -d --name devcont --mount source=devvolume,target=/app nginx
docker container run -d --name devcont2 -v devvolume:/app nginx
sudo ls /var/lib/docker/volumes/devvolume/_data
docker container exec -it devcont sh

####  Docker Networking  ####
# Docker Networking:

Open-source pluggable architecture
Container Network Model (CNM)
libnetwork implements CNM
Drivers extend the network topologies

# Network Drivers:

bridge
host
overlay
macvlan
none
Network plugins

# Container Network Model
Defines three building blocks:

Sandboxes
Endpoints
Networks

## Network config
docker network -h
docker network ls
docker network inspect bridge
docker network rm br00		# created, caution
docker network connect
docker network disconnect

#  Create a new network
docker network create --subnet 10.1.0.0/24 --gateway 10.1.0.1 br02
ifconfig
docker network inspect br02
docker network prune
docker network create --subnet 10.1.0.0/16 --gateway 10.1.0.1 \
--ip-range=10.1.4.0/24 --driver=bridge --label=host4network br04
docker network inspect br04
docker container run --name network-test01 -it --network br04 centos /bin/bash
yum update -y
yum install -y net-tools
ifconfig
netstat -rn
cat /etc/resolv.conf

docker container run -d --name network-test02 --ip 10.1.4.102 --network br04 nginx
docker container inspect network-test02 | grep IPAddr
docker container inspect network-test04
# network 2 containers
docker network create -d bridge --internal localhost

docker container run -d --name test_mysql \
-e MYSQL_ROOT_PASSWORD=P4SSw0rd0 \
--network localhost mysql:5.7

docker container run -it --name ping-mysql \
--network bridge --network localhost \
centos

docker container run -it --name cant-ping-mysql \
centos

docker container run -d --name private-nginx -p 8081:80 --network localhost nginx
docker container inspect private-nginx

####  Docker Networking  ####


####  Docker Storage  ####
Non-persistent
Persistent
  Volumes
storage location - /var/lib/docker/<STORAGE-DRIVER>/
Storage drivers
rhel overlay2
ubuntu overlay2 or aufs
suse btrfs

# Docker volume
docker volume create -h
docker volume inspect test-volume1
docker volume prune or rm
docker volume ls

# Docker bind mounts
mkdir target		# localhost
docker container run -d \
> --name nginx-bind-mount1 \
> --mount type=bind,source="$(pwd)"/target,target=/app \
> nginx

docker container run -d \
> --name nginx-bind-mount2 \
> -v "$(pwd)"/target2:/app \
> nginx

bind mount can be used for configuration files.

docker container run -d \
 --name nginx-volume1 \
 --mount type=volume,source=html-volume,target=/usr/share/nginx/html/ \
 nginx

####  Docker Storage  ####


```
