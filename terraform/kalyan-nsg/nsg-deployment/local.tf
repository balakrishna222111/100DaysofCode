locals {
  nsg_security_rules = [
    {
      name                   = "AllowHTTP"
      priority               = "100"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "80"
    },
    {
      name                   = "AllowSSH"
      priority               = "200"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "22"
    },
    {
      name                   = "AllowAzureMachineLearning"
      priority               = "300"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "44224"
    },
    {
      name                   = "AllowCognitiveServicesFrontend"
      priority               = "400"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "AllowCognitiveServiceManagement"
      priority               = "500"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "AllowHTTPOutbound"
      priority               = "100"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "80"
    },
    {
      name                   = "AllowSSHOutbound"
      priority               = "200"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "22"
    },
    {
      name                   = "AllowAzureMachineLearningOutbound"
      priority               = "300"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "44224"
    },
    {
      name                   = "AllowCognitiveServicesFrontendOutbound"
      priority               = "400"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "AllowCognitiveServiceManagementOutbound"
      priority               = "500"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "AllowMicrosoftDefenderForEndpoint"
      priority               = "700"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "*"
    },
    {
      name                   = "AllowMicrosoftDefenderForEndpointOutbound"
      priority               = "700"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "*"
    }
  ]

  tags = {
    environment = "Production"
    owner       = "kalyan"
  }
}