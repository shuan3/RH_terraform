PAN Personal area network phone to computer
CAN campis area network
MAN  city area network
WAN wide are network
LAN local area network  home network

# Network architecture
peer to peer  all computers can act as client or server. no dedicated servers. there is no centralized control over shared resources.
client-server   servers provide resources and clients receive resources


# Computer newworkging protocals
## physical protocols
wiring, the connection ports and voltage level on a wire
## logical protocols
software control how and when the data is sent and received to computers supporting physical protocols
Example web communication HTTP  Email POP3, SMTP IMAP       File transfer FTP

### OSI model
open system interconnection (OSI)  a conceptual framework showing us how data move through a network
didved into 7 layers. upper layers(host layers) lower layers ( media layers)
7.application layer  google chrome
6.presetntation layer  data representation and encryption  like HTML code
5.sesstion layer
4.transport layer   TCP transmision control protocol (connection-oriented) UDP user datagram protocol (connection less; used for streaming or real time data.; faster than TCP)

3.netwrok layer
2.data link layer  MAC
1.physical layer


#### TCP/IP
4.application layer    FTP,HTTP...
3.transport layer  TCP,UDP, ports
2.internet layer   IP,ARP, ICMP for ping and testing
1.network interface layer   ethernet , token ring

MAC address (Media access control) (Data link OSI layer 2 local LAN comunication)
IP address  (network layer)  (IPv4 IPv6 WAN communication)



Half vs Full Duplex communication
Half can send and receive data not same time
Full can send and receive data same time

network transmission types  mulicast boardcast unicast


### Ethernet
physical: cabling connectors equipment
logical network access method.
### Wired network topologies
Bus Topology: all devices are connected to a single coaxial network cable. only one end device can be active on the network at a time
Ring Topology: all deviced are connected in a circular fashion. Each device in the ring regenares the singnal acting as repeater. Fiber Distributed data interface uses 2 counter rotating ring topologies for redundancy.
Star Topology: all devices are connected to a central connecting device which is usually switch. Devices send data to switch which forward it to the appropriate destination. Populars in today's network.
Mesh Topology: Each device is connected to every other device by separate cabling. Expensive to install. commonly used in enterprise networks and WANs. highly redundant and fault otlerance.  (partial mesh full mesh)

### wireless network topologies
Ad hoc: peer to peer/ PANs. like cell phone to internet
Infrastructure: uses a wireless access point  (WLANs)
Mesh

### Network interface card (NIC)
network adapter installed on your network device

Hubs: connect devices together within network
Switches: connect devices together liks a hub. Memorizes the MAC address of each device connected to it via a MAC address table (Content addressable memory CAM cable). Pays attention to source and destination MAC address during communication process. Traffic goes in one port and is repeated out to only destination port. designed for high bandwidth.
Routers: used to connect different network together. Routes traffic between networks using IP addresses. Break up broadcast domains
OSI layer 1 = Hub
OSI layer 2 = Switch
OSI layer 3 = Router
Modems: Modems modulate one signal to another, such as analog to digital. Converting analog to digital
Internet -- analog -- modem -- digital --SOHO -- digital -- personal computer

Wireless access point (WAP): bridge that extends the wired network to wired network. WAP != router.
Wireless ranger extender: extends the range of a wireless network by acting as a wireles repeater

switch -- WAP -- range extender -- 


Media converters  OSI model layer 1


#### Firewalls
network-based (hardware)
host-based (software)

Packet filtering firewalls
circuit level firewalls: monitors valid and invalid tcp sessions.
application layer 7 firewalls

DHCP Server (dunamic host configuration protocal server)


# Types of network cabling
Coaxial    Twisted pare copper cabling

fiber

Ethernet is a network protocal that contrals how data is transmitted over a LAN. It support network built with coaxial, twisted-pair and fiber-optic cabling.
Ethernet N<signaling>-X 
N:signal rate
x: types of cable
Examble 10GBase-T -> 10 Gbps 100 meter







# Command ICMP
ARP command: arp -a
ping www.google.ca
pathping
tracert www.lexis.com
--track traffic
%sh
traceroute

netstat -aon
net start
--find out IP address
nslookup google.com
--update address
ipconfig /renew








##### Protocols
Compters communicate with each other iwth network protocols. 
protocols are rules governing how mathcines exchange data and enable effective communication.
##### Ports
ports are logical constructs that bind a unique port number to a protocol process or service
##### Sockets
Sockets are a combinaion of an IP addres and a port number, for example 192.168.1.1:80












#### Management protocols
##### Domain name system (DNS)
Protocol that is used to resolve a domain name to its corresponding IP address.
Use UDP port 53
##### Dynamic host configuration protocol DHCP
port 67,68 UDP
Protocol that auto assigns IP address configurations to devices on a network: IP adress, Subnet mask, Default Gateway, DNA server.
###### Network time protocla NTP
protocol that auto sync a system's time iwth net work time server.
TCP 123
##### Simple network management protocol (SNMP)
protocal that monitor and manage network devices
port 161 TCP
##### Light weight directory access protocol  (LDAPS)
port 390 TCP
##### Server message block (SMB)
network and file sharing protocol commonly used in microsoft env.
allow system to share their files and printers with other system.
Port 445 TCP

##### Remote communication protocols
###### Telnet
data is transfered in clear text so it is considere insecure. used to insecurely connect to a remote host.
port 23 TCP
###### Secure shell (SSH)
securely connect to a remote host.
encrypts data with public key infrastucture
port 22
##### Remote desktop protocol (RDP)
port 3389 TCP
allows user to remotely connect to , view and control a remote computer from a windows desktop. Built into microsoft operating system.


#### Fil transfer protocol
##### file transfrt protocol (FTP)
slowly being replaced by SFTP
allow transfer files between systems.
port 20 for data: data transer
port 21 for coontrol: commands
##### Secure file transfer protocol (SFTP)
TCP port 22
##### Trivial file transfer protocol (TFTP)
port 69 UDP
a bare- bones version of FTP used for simple downloads.
do not support authentication and directory naviation
requires that you request the exact file and location.
often used to transfer software images for routers and switches during upgrades.


#### SMTP Simple mail transfer protocol
email protocol tha is used to deliver email from an email client to a destination email server.
can be configured to use encryption.
TCP port 25 
#### Post office protocol version 3 (POP 3) 
Email protocol tha is used to retrieve emails form an email server.
port 110
user encryption or plain text
#### Internet message access protocol (IMAP)
allow users to access email on servers and either read the email on the server or download the email to the client matchine.
Gmail use IMAP
popular when a user accesses email from multiple different devices.
TCP port 143

#### Web browser application protocols
##### HTTP hypertext transfer protocol
port 80 TCP
retrieves the content of a web page from a web server
protocols that provides browsing services for the world wide web.

##### HTTPS
HTTP over secure socket layer or transport layer security
port 443 TCP
utilized public key infrastructure PKI

##### IPv4 address anatomy
network portion, host portion, subnet mask
IP address 
subnet mask
default gateway: The IP addess of a network's router that allows devices on the local network to communicatte iwth othe networks.




## IP Address
Host per network = 2^h-2
subtract 2 because network includes a network address and broadcast address that are not available for user by network and devices

### Public IP Address
registered public IP address
must bt used globally unique
web servers, DNS servers, Routers
Private IP address & Network address translation (NAT) 
### Private IP address
Unregisered - free for user by anyone
cannot be used or routed on a public network
Utilizes NAT to speak to public networks.


192.168.100.10
192.168.100.12-->switch--router (192.168.100.1/external 140.100.100.150) --> Internet
192.168.100.11
192.168.100.13

127.0.0.0 is typically configured as the default loopback address on operating systems. used for diagnostics purposes to check that TCP/IP is correctly installed on a host's operating system.
ping 127.0.0.1
ping localhost
ping loopback

Why IPv4 is around
subnetting CIDR
user of provate IP address
network address translation

Why IPv6 is needed?
security

Unicast
Multicast not board cast
Anycast  data is delivered to the nesarest network interfaces
##### Static
IP manually configured
DNS servers
web servres
printers
#### dynamic
DHCP server; dynamically configured.



## Domain Name System (DNS)
DNS provides TCP/IP name resolution services, which is the process of translating host and domain names into their correponding IP address.
Fully qualified domain names FQDN
Host name: www
Domain Name: XXX.com
Top-Level Domain: .com
### DNS Hierarchy
Top level domain DNS Servers (com mil edu net org)
Second level domain DNS servers (Microsoft.com)
Third Level Domian DNS servers (technet.Microsoft.com)
cPanel






#### Refresher on Switches
Memorizes the MAC address.

#### Routers
between routers serial is used
192.168.1.0/24 -->switches --> router -->router --> switches (MAC address) -->192.168.0.0/24

Types
static
dynamic (protocol distance- vector (hop count: numbers of routers) (RIP & EIGRP), link-state (shortest-path first tree OSPF), hybrid)

IGP (interior gateway protocol) udemy --> router -->internet EGP--> router IGP
BGP: the only RGP widespread used today. The best path selection algorithm to identify best route.
###### Route table entries
directly connected routes
remote network routes
default routes












##### Wireless frequencies
AM Radio 10MHz
FM Radio 100MHz
Microwave oven 2.4GHz
Cordless Phone 2.4GHz

802.11 wireless opeartes eiher 2.4 GHz or 5 GHz
2.4 GHz longer frequency waves, good for long distances slower data rates, fewer channels
5 GHz shorter frequency waves, less effective for long distances, faster data rates, more channels

MIMO (Multiple Input, Multiple Output)
MU MIMO multiple user MIMO allow multiple users to communicate iwh a WAP at the same time

ANT+: wireless protocol for wathc
Bluetoth: wireless communication protocol for personal area network
NFC near field communication: wireless communication protocol, "tap to pay"
Infrared (IR): television remotes control
Raddio frequency identification RFID: supply chain




### WAN
#### Circuit-switched connection
fixed bandwidth

#### Packer-Switched connection
Share bandwidth and connection with others.

#### Vittual circuit
a mean of forwarding packets of data in such a way that it appears as if there is a dedicated physical link circuit between the source and destination.
permanent virtual circuit (PVC)
switched virtual circuit (SVC)
#### Dedicated leased line
point to point link
dedicated physical line or a permanent virtual circuit


### WAN Medium
copper and fiber
wireless (Cellular) 4G 25-30Mbps  5G 40Mbps to 1.5Gbps
satellite  sensitive to weather, expensive   12-100Mbps   need to have a satellite dish installed


Customer's LAN -->Router-->CSU/DSU Modem-->Demarcation Point-->smart jack-->Network service provider
##### Demarcation Point
The point where the ISP's network ends and the organizetion's network begins.
The dividing line between the service provider and customer's network.
##### Smart Jack
a smart jack is often used with a CSU/DSU, which enables the service provider to diagnosis network issues and perform loopback tests.
##### CSU/DSU Modem
a wan connectivity device that connects a WAN link to a custoemr's LAN and it is a modem.
CSU connects to the network service provider's network while DSU connects to a customer's data termination equipment (router)

###### WAN broad services

###### Dail-up
56 Kbps
use circuit switching. PSTN public switched telephone network
###### T carrier & E carrier digital signal lines
T carrier lines: north american, japan
E carrier lines: European
###### DSL
use DSL splitter. send data digitally over telephone lines.
computer --> router-->DSL modem-->DSL Splitter-->telecommunication company central office
phone-->DSL splitter-->telecommunication company central office

Asymmetric DSL ADSL: allocates more bandwidth to downsteam than upstream. 24Mbps-1Mbps.
Symmetric DSL SDSL: same bandwidth. 1.544 Mbps in US and canada and 2.048 Europe
very high bitrate DSL VDSL: Asymmetric 300 Mbps download and 100 Mbps upload. Symmetric 100 Mbps for upload and download

##### Cable broadband
computer --> router-->Cable modem-->Cable Splitter-->cable company
TV-->Cable tuner-->Cable splitter-->cable company

##### WAN protocols
point-to-point protocol
frame rplay

