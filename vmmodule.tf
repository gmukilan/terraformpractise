module "namerg" {
    source              = "app.terraform.io/mukilandev/storagemodule/azurerm"
    rg_name             = "mukilan-rg-module"
    location            = "East US"
    tags = {
        environment = "dev"
        owner       = "mukilan"
    }
  
}