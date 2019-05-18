```sh
#######  Setting up gcloud-sdk  ########
## https://blog.scottlowe.org/2018/09/13/running-gcloud-cli-in-a-docker-container/
## https://hub.docker.com/r/google/cloud-sdk/

# Docker image for gcloud-sdk
google/cloud-sdk

# To store authentication outside container
mkdir -p ~/.config/gcloud
docker run --rm -ti -v $HOME/.config/gcloud:/root/.config/gcloud google/cloud-sdk gcloud init

# create an alias
alias gcloud="docker run --rm -ti \
-v $HOME/.config/gcloud:/root/.config/gcloud \
google/cloud-sdk gcloud"

#######  Setting up gcloud-sdk  ########

####  Check config settings  #####
gcloud -h
gcloud help config
gcloud config --help
gcloud config list
gcloud info
gcloud projects list
gcloud set project PROJECT_ID
gcloud components list
gcloud auth login	# after webbrowser opens paste verification code
####  Check config settings  #####

### GCloud App Engine
gcloud app create
gcould app deploy app.yaml --project \
helloworld-24120
http://helloworld-241020.appspot.com/

gcloud app versions list
SERVICE  VERSION          TRAFFIC_SPLIT  LAST_DEPLOYED              SERVING_STATUS
default  20190518t151717  1.00           2019-05-18T21:19:38+00:00  STOPPED
➜  ~ gcloud app versions list
SERVICE  VERSION          TRAFFIC_SPLIT  LAST_DEPLOYED              SERVING_STATUS
default  20190518t151717  1.00           2019-05-18T21:19:38+00:00  SERVING

### GCloud Compute instance
# https://cloud.google.com/sdk/gcloud/reference/compute/instances/create
gcloud compute instances create devopscube-demo-instance \
 --image centos-7-v20170523 \
 --image-project centos-cloud --set-machine-type f1-micro --zone us-central1-a

gcloud compute ssh (instance-name)
gcloud compute instances delete (instance name)

```
