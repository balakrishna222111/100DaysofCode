# output "nsg_id" {
#   description = "The ID of the NSG"
#   value       = var.deploy_nsg ? azurerm_network_security_group.example[0].id : null
# }

output "nsg_id" {
  description = "The ID of the NSG"
  value       = azurerm_network_security_group.nsg.id
}