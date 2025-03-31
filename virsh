virsh help

# connect to hypervisor
virsh connect host

# List all domains
virsh list                # List running
virsh list --all          # List all

# Control instances
virsh start <instance>
virsh shutdown <instance>
virsh destroy <instance>
virsh suspend <instance>
virsh resume <instance>

# system state
virsh save <instance> /tmp/vm
virsh restore /tmp/vm

virsh console <instance> &

# Define instances
virsh dumpxml <instance> >dump.xml
virsh create dump.xml   # Create from XML
virsh edit <instance>
virsh undefine <instance>

virsh blockresize <instance> --path vda --size 100G

virsh dominfo
virsh vcpuinfo
virsh nodeinfo

virsh quit   # Leave CLI
virsh ttyconsole <instance>
