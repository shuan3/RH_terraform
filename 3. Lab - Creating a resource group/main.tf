/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1. azurerm_resource_group - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = ""
  client_id       = "08d82452-5ee9-4b5b-96ea-aec56d9db182"
  client_secret   = "oc38Q~D5P_jTpGSStayL3_3pT2Kqm2olimm2Ja_p"
  tenant_id       = ""
  features {}
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}