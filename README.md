# RH_terraformsdfaf


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