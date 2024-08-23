# RH_terraformsdfaf
https://github.com/in4it/terraform-azure-course/tree/master


Terraform uses providers, which are shipped separately with their own verion numbering.
The terraform core contains the language interpreter, the CLI and how to interact with those providers (not the provider itself)
It do not contain the code to interact with the API of the cloud providers to create resources that code will be found in the providers which will be installed separately when invking terraform init.


patch=bug fix only
minor=new features
major=possible breaking changes

Bug fix are performed in the patch release: 0.12.1...
Terraform released breaking changes between 0.12,0.13...



Terraform init

Terraform --> local backend (local file on disk)-->local locking (-lock file)
Terraform --> remote backend (e.g. Azure Blob Storage) -->Azure Storage leases for locking
sate locking ensures nobody can write to the state at the same time

terraform refresh --> to update your state


Terraform
Input variables   (default, type (string, number bool, list()，set(),map(),object({attr_name=type}),tuple([type,...]), any indicate any type is acceptable), descriptoin, validation, sensitive)
output variables (description, sensitive, depends_on)
local variables

### Load Balancers
Inbound: from internet to the load balancer to your backend VMs.
Outbound from your backend VMs to the internet.
To route the traffic from the load balancer to the backends, you setup load balancer rules. For example, port 80 (http) to port 8080 (application) on the VM backends

Public IP Address -->azure load balancer --> VM Scale Sets --> network security groups --> autoscaling


### Azure database for Mysql
Network security
connectivity architecture
IP firewall raules
virtual network firewall rules

Users-->azure gateway --> azure database for my sql servers



# Azure storage
durable and high availabilibt
security
accessibility
saclability

Azure blob storage: unstructured data
Azure table storage: part of azrue cosmosDB, NOSQL data
Azure file storage: managed file sharing SMB
Azure queue storage: Message storage queue, HTTP
Azure Data Lake Storage Gen2: Big data analysis
Disk storage: Managed and unmanaged disks (VHD)

Types:
general purpose v2 Recommended
general purpose v1 legacy
blockblob storage for high,low,latency transaction scenarios
files storage accounts for high performance scale aplications
bolbstorage account legacy blob only storage


# Application Gateway
web traffic load balancer
operates on the OSI layer 7
SSL/TLS termination
Redirecting
Request based routing. this allows the application gateway to be used for multiple domains.
Autoscaling(zone redundancy, static VIP ingress controller for AKS)

users-->application gateway-->homespage/application

Application layer -- HTTP FTP SSH  Application gateway
Presentation layer -- HTTPS SSL JPEG ASCII..
Session layer -- API SOCKET
Transport layer -- TCP UDP  Traditional load balancer
Network layer -- IP ICMP router
Data link layer -- Ethernet Switch
Physical layer -- Coax Fiber Hub