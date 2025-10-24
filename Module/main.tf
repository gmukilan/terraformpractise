resource "azurerm_resource_group" "modulerg" {
    name     = var.rg_name
    location = var.location
    tags     = var.tags
  
}