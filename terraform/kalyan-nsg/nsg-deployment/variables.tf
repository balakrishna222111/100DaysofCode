variable "deploy_nsg" {
  description = "Boolean to determine whether or not to create the NSG"
  type        = bool
  default     = true
}

variable "nsg_name" {
  default     = "myNSG"
  type        = string
  description = "(optional) describe your variable"
}

variable "location" {
  default     = "East US"
  type        = string
  description = "(optional) describe your variable"
}

variable "resource_group_name" {
  default     = "test"
  type        = string
  description = "(optional) describe your variable"
}

# variable "default_destination_address_prefix" {

#   default = "192.168.0.1/32"
#   type = string
#   description = "Default value of destination address prefix"

# }