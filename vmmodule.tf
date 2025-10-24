module "namerg" {
    source              = "./Module"
    rg_name             = "mukilan-rg-module"
    location            = "East US"
    tags = {
        environment = "dev"
        owner       = "mukilan"
    }
  
}