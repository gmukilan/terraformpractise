variable "subscription_id" {
    description = "The Client ID of the Service Principal."
    type = string
  }

variable "client_id" {
    description = "The Client ID of the Service Principal."
    type = string
    }

variable "secret_value" {
    description = "The Client ID of the Service Principal."
    type = string
      }

variable "tenant_id" {
    description = "The Client ID of the Service Principal."
    type = string
  }

variable "saname" {
  type = string   
}

variable "vmname" {
  type = string   
  
}
variable "vmsize" {
  type = string   
  
}
variable "prefix" {
  type    = string
  default = "mytf"
}

variable "storage_account_name" {
  type    = string
  default = "mukatfstorageacct"
  
}

variable "location" {
  type    = string
  default = "East US"
  
}

variable "data_disk_size_gb" {
  type    = number
  default = 10
  
}


