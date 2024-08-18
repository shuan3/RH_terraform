variable "users" {
  description = "A list of users to add"
  type = map(object({
    email     = string,
    user_type = string
  }))
  default = {
    "member1" = {
      email     = "member1@abc.com",
      user_type = "Member"
    },
    "member2" = {
      email     = "member2@abc.com",
      user_type = "Member"
    },
    "guest1" = {
      email     = "guest@abc.com",
      user_type = "Guest"
    }
  }
}

# Get the users from AAD
data "azuread_user" "my_users" {
  for_each = var.users
  	user_principal_name = each.value.email
}

resource "azuread_group" "my_group" {
  display_name     = "mygroup"
  security_enabled = true
}


# Only add users who are members to the group
resource "azuread_group_member" "my_group_members" {
  for_each = { for key, val in data.azuread_user.my_users :
  	key => val if val.user_type == "Member" }

  Group_object_id     = azuread_group.my_group.id
  Member_object_id = data.azuread_user.my_users[each.key].id
}



#example 2
variable "instance_set" {
  type = set(string)
  default = ["Instance A", "Instance B"]
}

resource "aws_instance" "by_set" {
  for_each = var.instance_set
  ami = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}


#exmplae 3
#main.tf
variable "instances" {
  description = "Map of instance configurations"
  type = map(object({
    ami           = string
    instance_type = string
  }))
  default = {
    "amzlinux" = {
      ami           = "ami-02d3fd86e6a2f5122"
      instance_type = "t2.micro"
    },
    "ubuntu" = {
      ami           = "ami-0ce2cb35386fc22e9"
      instance_type = "t2.small"
    }
  }
}
resource "aws_instance" "servers" {
  for_each      = var.instances
  ami           = each.value.ami
  instance_type = each.value.instance_type
  tags = {
    Name = "env0-Server-${each.key}"
  }
}