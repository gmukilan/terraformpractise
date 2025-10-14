resource "azurerm_resource_group" "myrg" {
  name     = "iyapparg"
  location = "East US"
  tags = {
    environment = "Terraform Demo"
    maintenance = "Azure Team"
  }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
  
}

data "azurerm_resource_group" "example" {
  name = "iyapparg"
}

resource "azurerm_storage_account" "datstorage" {
  name                     = "iyappastorageacc"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "Terraform Demo"
  }
}