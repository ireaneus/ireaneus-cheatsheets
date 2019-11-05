[Back](README.md) to README.md

# Cheat sheet for networking commands

## Status of interfaces
```
sh int status
```

## Information about router tables
```
sh mac address-table
sh mac address-table | i interface # i include specific interface

sh arp 
sh arp | i mac address # shows IP address for mac address
```

## Enable / Config interface
```
en
config
interface Gi
interface> shut
interface> no shut
```

## Show all private IP addresses for local host
```
ifconfig | grep "inet addr:" | awk '{print $2}' | grep -v '127.0.0.1' | cut -f2 -d:
ip addr show | grep inet | grep -v 'inet6'| grep -v '127.0.0.1' | awk '{print $2}' | cut -f1 -d/
```

## How Ping works
Computer A sends an ICMP ECHO_REQUEST to a DNS computer B which sends an ECHO_REPLY

| Type | Code	| description |
| --- | --- | ---|
| 0	| 0	| echo reply (ping) |
| 3	| 0	| dest network unreachable |
| 3	| 1 |	dest host unreachable |
| 3	| 3	| dest port unreachable |
| 3	| 6	| dest network unknown |
| 3	| 7	| dest host unknown |
| 4	| 0	| source quench (congestion control - not used) |
| 8	| 0	| echo request (ping) |
| 9	| 0	| route advertisement |
| 10 | 0 | router discovery |
| 11 | 0 | TTL expired |
| 12 | 0 |	bad IP header |

## Routing protocols
There are three major types of routing protocols.

- Routing Information Protocols(RIP)
- Interior Gateway Protocol (IGRP)
- Open Shortest Path First (OSPF)
- Exterior Gateway Protocol (EGP)
- Enhanced interior gateway routing protocol (EIGRP)
- Border Gateway Protocol (BGP)
- Intermediate System-to-Intermediate System (IS-IS)

## Routing information protocols (RIP)

RIP (Routing Information Protocol) is a forceful protocol type used in local area network and wide area network. RIP (Routing Information Protocol) type is categorized interior gateway protocol within the use of distance vector algorithm. Routing information protocols defined in 1988. It also has version 2 and nowadays both versions are in use. Technically it is outdated by more sophisticated techniques such as (OSPF) and the OSI protocol IS-IS.

## Open shortest path first (OSPF)

Open Shortest Path First (OSPF) is an active routing protocol used in internet protocol. Particularly it is a link state routing protocol and includes into the group of interior gateway protocol. Open Shortest Path First (OSPF) operating inside a distinct autonomous system. The version 2 of Open Shortest Path First (OSPF) defined in 1998 for IPv4 then the OSPF version 3 in RFC 5340 in 2008. The Open Shortest Path First (OSPF) most widely used in the network of big business companies.

## Exterior Gateway Protocol (EGP)

The absolute routing protocol for internet is exterior gateway protocol which is specified in 1982 by Eric C. EGP (Exterior Gateway Protocol) initially expressed in RFC827 and properly specified in RFC 904 in 1984.The Exterior Gateway Protocol (EGP) is unlike distance vector and path vector protocol. It is a topology just like tree.

## Enhanced interior gateway routing protocol (EIGRP)

Enhanced Interior Gateway Routing Protocol (EIGRP) based on their original IGRP while it is a Cisco proprietary routing protocol. It is a distance-vector routing protocol in advance within the optimization to lessen both the routing unsteadiness incurred after topology alteration, plus the use of bandwidth and processing power in the router which support enhanced interior gateway routing protocol will automatically reallocate route information to IGRP (Enhanced Interior Gateway Routing Protocol) neighbors by exchanging the 32 bit EIGRP (Enhanced Interior Gateway Routing Protocol) metric to the 24 bit IGRP metric. Generally optimization based on DUAL work from SRI which assured loop free operation and offer a means for speedy junction.

## Border Gateway Protocol (BGP)

Border Gateway Protocol (BGP) are the core routing protocol of the internet and responsible to maintain a table of Internet protocol networks which authorize network reaching capability between AS. The Border Gateway Protocol (BGP) expressed as path vector protocol. It doesn’t employ conventional IGP metrics but making routing judgment based on path, network policies. It is created to replace the Exterior Gateway Protocol (EGP) routing protocol to permit completely decentralized routing in order to permit the removal of the NSF Net which consent to internet to turn into a truly decentralized system. The fourth version of Border Gateway Protocol (BGP)has been in use since 1994 and 4th version from 2006 .The 4 version RFC 4271 has many features such as it correct a lots of previous errors, illuminating vagueness and brought t the RFC much nearer to industry practice.

## Private IP address ranges
- 192.168.0.0 - 192.168.255.255 (65,536 IP addresses)
- 172.16.0.0 - 172.31.255.255 (1,048,576 IP addresses)
- 10.0.0.0 - 10.255.255.255 (16,777,216 IP addresses)

## Network ports
- 20/21—FTP
- 22—SSH
- 23—Telnet
- 25—SMTP
- 53—DNS
- 80—HTTP
- 110—POP3
- 123—NTP
- 139—NETBIOS
- 143—IMAP
- 161/162—SNMP
- 389—LDAP
- 443—HTTPS
- 465—SMTPS
- 514—SYSLOG
- 636—LDAPS
- 993—IMAPS
- 995—POP3S

## VLAN definition
A VLAN is a set of end stations and the switch ports that connect them. You can have different reasons for the logical division, such as department or project membership. The only physical requirement is that the end station and the port to which it is connected both belong to the same VLAN.

Adding virtual LAN (VLAN) support to a Layer 2 switch offers some of the benefits of both bridging and routing. Like a bridge, a VLAN switch forwards traffic based on the Layer 2 header, which is fast. Like a router, it partitions the network into logical segments, which provides better administration, security, and management of multicast traffic.

A VLAN is a group of devices on one or more LANs that are configured to communicate as if they were attached to the same wire, when in fact they are located on a number of different LAN segments. Because VLANs are based on logical instead of physical connections, they are extremely flexible.

VLANs define broadcast domains in a Layer 2 network. A broadcast domain is the set of all devices that will receive broadcast frames originating from any device within the set. Broadcast domains are typically bounded by routers because routers do not forward broadcast frames. Layer 2 switches create broadcast domains based on the configuration of the switch. Switches are multiport bridges that allow you to create multiple broadcast domains. Each broadcast domain is like a distinct virtual bridge within a switch.
