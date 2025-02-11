variable "name" {
  type        = string
  description = "Specifies the name of the Key Vault. Changing this forces a new resource to be created."
  default     = "test-balu"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
  default     = "test"
}

variable "location" {
  type        = string
  description = "The location/region where the Key Vault is created."
  default     = "East US"
}


variable "sku_name" {
  type        = string
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  default     = "standard"
}

variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
  default     = "cf196658-c801-4432-aa13-3ef9b50b6043"
}



variable "secret_maps" {
  description = "A map of secrets to be stored in the Key Vault"
  type        = map(string)
  default     = {
  }
}
