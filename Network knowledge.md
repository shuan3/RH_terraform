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
6.presetntation layer  dat representation and encryption  like HTML code
5.sesstion layer
4.transport layer   TCP transmision control protocol (connection-oriented) UDP user datagram protocol (connection less; used for streaming or real time data.; faster than TCP)

3.netwrok layer
2.data link layer  MAC
1.physical layer


#### TCP/IP
application layer    FTP,HTTP...
transport layer  TCP,UDP, ports
internet layer   IP,ARP, ICMP for ping and testing
network interface layer   ethernet , token ring

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

##### Protocols
Compters communicate with each other iwth network protocols. 
protocols are rules governing how mathcines exchange data and enable effective communication.
##### Ports
ports are logical constructs that bind a unique port number to a protocol process or service
##### Sockets
Sockets are a combinaion of an IP addres and a port number, for example 192.168.1.1:80

%sh
traceroute

netstat -aon
net start
nslookup google.com