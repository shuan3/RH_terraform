

resource "azurerm_storage_account" "my_storage_account" {
  count = var.add_storage_account ? 1 : 0

  resource_group_name      = "rg-conditional-demo"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  name = "stspacelift${count.index}${local.rand_suffix}"
}