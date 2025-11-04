resource "azurerm_managed_disk" "data_disk" {
  name                 = "${var.prefix}-data-disk"
  location             = var.location
  resource_group_name  = module.namerg.azurerm_resource_group_name_1
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb        = var.disk_size_gb
  
}