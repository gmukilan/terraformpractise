resource "azurerm_storage_account" "mukakstorage" {
  name                     = var.storage_account_name
  resource_group_name      = module.namerg.azurerm_resource_group_name_1
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "TerraformDemo"
  }
  
}