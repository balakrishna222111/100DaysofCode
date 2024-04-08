resource "azurerm_network_security_group" "nsg" {
  name                =  var.nsg_name
  resource_group_name = var.resource_group_name
  location = var.location

  dynamic "security_rule" {
    for_each = var.security_rules

    content {
      name                       = security_rule.value[0]
      priority                   = security_rule.value[1]
      direction                  = security_rule.value[2]
      access                     = security_rule.value[3]
      protocol                   = security_rule.value[4]
      source_port_range          = security_rule.value[5]
      destination_port_range     = security_rule.value[6]
      source_address_prefix      = security_rule.value[7]
      destination_address_prefix = security_rule.value[8]
    }
  }

}