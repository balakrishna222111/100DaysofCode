output "vault_id" {
  description = "The ID of this Key Vault."
  value       = azurerm_key_vault.keyvault.id
}