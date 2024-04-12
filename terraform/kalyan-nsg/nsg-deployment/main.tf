module "nsg" {
  count               = var.deploy_nsg ? 1 : 0
  source              = "../nsg-module"
  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
  security_rules      = local.nsg_security_rules

  tags = local.tags
}
