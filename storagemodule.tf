resource "azurerm_storage_account" "mukakstorage" {
  name                     = var.storage_account_name
  resource_group_name      = module.namerg.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "TerraformDemo"
  }
  
}