/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1.azurerm_virtual_network - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network

*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = ""
  tenant_id = ""
  client_id = ""
  client_secret = ""
  features {}  
}


resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}

resource "azurerm_virtual_network" "appnetwork" {
  name                = "app-network"
  location            = "North Europe"
  resource_group_name = "app-grp"
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnetA"
    address_prefix = "10.0.0.0/24"
  }

  subnet {
    name           = "subnetB"
    address_prefix = "10.0.1.0/24"    
  }
}

