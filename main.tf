resource "azurerm_resource_group" "myrg" {
  name     = "iyapparg"
  location = "East US"
  tags = local.tags
  }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
  

data "azurerm_resource_group" "example" {
  name = "iyapparg"
}

resource "azurerm_storage_account" "datstorage" {
  name                     = "iyappastorageacc"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = var.saname
  account_replication_type = "LRS"

  tags = {
    environment = "Terraform Demo"
  }
}

resource "azurerm_virtual_machine" "myvm" {
  name                  = var.vmname
  location              = data.azurerm_resource_group.example.location
  resource_group_name   = data.azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.myvmnic.id]
  vm_size               = "${var.vmsize}"

  storage_os_disk {
    name              = "myOsDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "hostname"
    admin_username = "azureuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = local.tags
  
}