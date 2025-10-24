module resource_group_name "namerg" {
    source              = "./Module"
    rg_name             = "mukilan-rg-module"
    location            = "East US"
    tags = {
        environment = "dev"
        owner       = "mukilan"
    }
  
}