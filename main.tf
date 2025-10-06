
resource "azurerm_resource_group" "myrg" {
  name     = "iyapparg"
  location = "East US"
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = "iyappastorageaccout"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}