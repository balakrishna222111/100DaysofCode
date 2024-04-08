variable "nsg_name" {
  description = "The name of the Network Security Group"
}

variable "location" {
  description = "The Azure region where the NSG will be created"
}

variable "resource_group_name" {
  description = "The name of the resource group where the NSG will be created"
}

variable "security_rules" {
  description = "List of security rules for the NSG"
  type        = list(list(string))
}
