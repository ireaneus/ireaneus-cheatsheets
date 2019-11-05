- [Back](README.md) to README.md

# OpenStack

## About OpenStack  

OpenStack is an open source cloud platform that controls large pools of compute, storage, and networking resources throughout a datacenter, all managed by a dashboard that gives administrators control while empowering users to provision resources through a web interface.

- Written mostly in Python and free under the Apache 2.0 license

### OpenStack Services

| OpenStack Name | OpenStack Service
| --- | --- | 
| Keystone | Identity |
| Horizon | Dashboard |
| Nova | Compute |
| Neutron | Networking |
| Glance | Imaging |
| Swift | Object Storage |
| Cinder | Block Storage |

#### OpenStack Modules
- Daemon - Daemons run as background processes. On Linux platforms, a daemon is usually installed as a service.
- Script - Installs a virtual environment and runs tests
- Command line interface - CLI enables users to submit API calls to OpenStack services through commands.

### Basic Architecture
- End users can interact through the dashboard, CLIs, and APIs.
- All services authenticate through a common identity service.
	- Command-line interfaces: Nova, neutron, swift...
	- Cloud Management: Rightscale, Enstratius...
	- GUI Tools: Dashboard, Cyberduck, iPhone client...
- Individual services interact with each other through public APIs, except where privileged administrator commands are necessary.

- Internet
	- OpenStack Object API
	- OpenStack Image API
	- OpenStack Dashboard
	- OpenStack Compute API
	- VNC/VMRC
	- OpenStack Block Storage API
	- OpenStack Networking API

#### Advanced Message Queue Protocol
- OpenStack Compute uses a central hub for passing messages between daemons.
- The most commonly used Advanced Message Queueing Protocol (AMQP) is RabbitMQ, but ZeroMQ can also be used.

#### Databases
- Most build-time and runtime states for Cloud infrastructure are stored in a SQL database, including:
	- Available instance types
	- Instances in use
	- Available networks
	- Projects
	- Etc!
- The most commonly used databases are MySQL/MariaDB, PostgreSQL for production, and SQLite for development.

### Keystone
Keystone is the Identity Service used by OpenStack for authentication and high-level authorization. It provides API client authentication, service discovery, and distributed multi-tenant authorization by implementing OpenStack’s identity API.

### Horizon
Horizon is a Django-based project aimed at providing a complete OpenStack dashboard, along with an extensible framework for building new dashboards from reusable components.

### Nova
OpenStack Compute (codename Nova) is an open source software designed to provision and manage large networks of virtual machines, creating a redundant and scalable cloud computing platform.

### Neutron
Neutron is an OpenStack project created to provide Networking as a Service (NaaS) between interface devices managed by other OpenStack services.

### Glance
OpenStack Compute (Nova) relies on an external image service to store virtual machine images and maintain a catalog of available images. By default, Compute is configured to use the Glance image service, which is currently (as of Newton release) the only supported image service.

### Swift
The OpenStack Object Store project known as Swift is a highly available, distributed, eventually consistent object store that can be used to store lots of data efficiently, safely, and cheaply.

### Cinder
OpenStack Block Storage (codename Cinder) is designed to present storage resources to end users that can be consumed by the OpenStack Compute project (Nova).

### Optional Services:
### Trove
### Ironic - Bare Metal provisioning
### Magnum - Containers as a service
### Telemetry - Billing services
### Sahara - Elastic Map Reduce
### Designate - DNS
