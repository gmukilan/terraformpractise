variable "location" {
    description = "The Azure region where resources will be created."
    type        = string
  
}
variable "tags" {
    description = "A map of tags to assign to the resource group."
    type        = map(string)
  
}
variable "rg_name" {
    description = "The name of the Resource Group."
    type        = string
  
}