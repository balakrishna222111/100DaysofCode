# resource "azurerm_network_security_group" "nsg" {
#   name                = var.nsg_name
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   dynamic "security_rule" {
#     for_each = var.security_rules
#     content {
#       name                       = security_rule.value[0]
#       priority                   = security_rule.value[1]
#       direction                  = security_rule.value[2]
#       access                     = security_rule.value[3]
#       protocol                   = security_rule.value[4]
#       source_port_range          = length(security_rule.value) > 5 ? security_rule.value[5] : var.default_source_port_range
#       destination_port_range     = security_rule.value[6]
#       source_address_prefix      = length(security_rule.value) > 7 ? security_rule.value[7] : var.default_source_address_prefix
#       # destination_address_prefix = length(security_rule.value) > 8 ? security_rule.value[8] : var.default_destination_address_prefix
#        destination_address_prefix = lookup(security_rule.value , 8 , var.default_destination_address_prefix)
      
#       }
#   }
  

#   tags = var.tags
# }