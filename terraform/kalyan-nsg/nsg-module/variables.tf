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

As per your req i made the changes to pass source port ,dest add as an option values  using security_rules as list(list (string)) datatype

Whiile doing these i think if we can update the datatype of security_rules using list(masp(string)) whihc will be more conviewent andd
better understanding the in readable format while passing the security rules parameters in while calling the nsg in the child module from the root module

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