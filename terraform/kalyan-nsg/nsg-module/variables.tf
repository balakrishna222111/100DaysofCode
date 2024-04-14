variable "nsg_name" {
  description = "The name of the NSG"
  type        = string
}

variable "location" {
  description = "The location/region where the NSG is created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NSG"
  type        = string
}

# variable "security_rules" {
#   description = "List of security rules for the NSG"
#   type        = list(list(string))
# }

variable "security_rules" {
 description = "List of security rules for the NSG"
 type        = list(map(string))
 default     = []
}


variable "tags" {
  description = "Tags to apply to the NSG"
  type        = map(string)
  default     = {}
}

variable "default_source_port_range" {
  default = "*"
  type = string
  description = "Default value of source port range"
}

variable "default_destination_port_range" {
  default = "*"
  type = string
  description = "Default value of source port range"
}


variable "default_source_address_prefix" {
  default = "*"
  type = string
  description = "Default value of source address prefix"
}

variable "default_destination_address_prefix" {
  default = "*"
  type = string
  description = "Default value of destination address prefix"
}

# variable "security_rules" {
#   description = "A list of security rules to apply to the NSG"
#   type = list(object({
#     name                       = string
#     priority                   = number
#     direction                  = string
#     access                     = string
#     protocol                   = string
#     source_port_range          = string
#     destination_port_range     = number
#     source_address_prefix      = string
#     destination_address_prefix = string
#   }))
# }