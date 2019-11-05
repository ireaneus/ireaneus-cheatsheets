```sh

For detailed information, please see the man page: https://firewalld.org/documentation/man-pages/firewall-cmd.html

firewall-cmd --state                   -- Display whether service is running
systemctl status firewalld             -- Another command to display status of service
systemctl restart firewall-cmd         -- To restart service
firewall-cmd --reload                  -- To reload the permanent rules without interrupting existing persistent connections

firewall-cmd --permanent OPTIONS       -- Used to set OPTIONS permanently, not effective immediately
firewall-cmd --runtime-to-permanent    -- Save active runtime configuration and overwrite permanent configuration with it.


firewall-cmd --get-default-zone        -- Print default zone for connections and interfaces
firewall-cmd --get-active-zones        -- Print currently active zones altogether with interfaces and sources used in these zones.
firewall-cmd --list-all                -- List everything added for or enabled in zone, if zone is omitted, default zone will be used.

firewall-cmd --add-masquerade          -- Enable Masquerading (non-permanent)

firewall-cmd --zone=public --change-interface=eth1              -- Change the zone the interface eth1 is bound to to zone public.

firewall-cmd --get-services                                     -- Print predefined services as a space separated list.

firewall-cmd --zone=public --add-service=http                   -- Add the service http to the zone public

firewall-cmd --zone=public --list-services                      -- List services added for zone public as a space separated list.

firewall-cmd --list-ports                                       -- List ports added for the default zone

firewall-cmd --zone=public --add-port=5000/tcp                  -- Add port 5000/tcp to the public zone


firewall-cmd --permanent --new-service=service                  -- Add a permanent and empty service named "servcie"

firewall-cmd --permanent --new-zone=zone                        -- Add a permanent and empty zone named "zone"

firewall-cmd --permanent --zone=public --add-source=10.0.1.0/24 -- Add the network 10.0.1.0/24 network as a source for the public zone

firewall-cmd --permanent --new-ipset=ipset --type=hash:ip       -- Add a permanent and empty ipset named "ipset" of the type "hash:ip"

firewall-cmd --permanent --zone=drop --add-source=ipset:test    --Add IPSet "test" as a source for zone "drop"

firewall-cmd --permanent --direct --add-rule ipv4 nat POSTROUTING 0 -o eth1 -j MASQUERADE -- Add a direct iptables rule using firewalld to add the POSTROUTING chain of the nat table at line 0, specifying outbound on eth1 be masqueraded.

```
