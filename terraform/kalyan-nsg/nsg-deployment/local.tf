locals {
  nsg_security_rules = [
    {
      name                   = "allow_tfcagent_c_cus_inbound_vm"
      priority               = "1010"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "80"
    },
    {
      name                   = "allow_adoagent_c_cus_inbound_vm"
      priority               = "1020"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "22"
    },
    {
      name                   = "allow_core_vm_c_cus_inbound_vm"
      priority               = "1030"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "44224"
    },
    {
      name                   = "allow_managment_m_cus_inbound"
      priority               = "1100"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_managment_m_eus2_inbound"
      priority               = "1120"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_managment_m_wus3_inbound"
      priority               = "1130"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_identity_i_cus_inbound_vm"
      priority               = "1200"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_identity_i_eus_inbound_vm"
      priority               = "1210"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_identity_i_eus2_inbound_vm"
      priority               = "1220"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "allow_identity_i_wus3_inbound_vm"
      priority               = "1230"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
    },
    {
      name                   = "AllowHTTPOutbound"
      priority               = "1120"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "80"
    },
    {
      name                   = "AllowSSHOutbound"
      priority               = "1130"
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
      name                   = "allowmanagment_m_eus_inbound"
      priority               = "1110"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "*"
    },
    {
      name                   = "AllowMicrosoftDefenderForEndpointOutbound"
      priority               = "690"
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
