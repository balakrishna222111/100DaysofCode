variable "name" {
  type        = string
  description = "Specifies the name of the Key Vault. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "The location/region where the Key Vault is created."
}


variable "sku_name" {
  type        = string
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium."
}

variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
}


variable "secret_maps" {
    type = map(string)
  default     = {}

}