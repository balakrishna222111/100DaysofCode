locals {
  nsg_security_rules = [
    {
      name                   = "allow_tfcagent_c_cus_inbound_vm"
      priority               = "1010"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.0.32/28"
    },
    {
      name                   = "allow_adoagent_c_cus_inbound_vm"
      priority               = "1020"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.0.48/28"
    },
    {
      name                   = "allow_core_vm_c_cus_inbound_vm"
      priority               = "1030"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.1.64/27"
    },
    {
      name                   = "allow_managment_m_cus_inbound"
      priority               = "1100"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.48.0/22"
    },
    {
      name                   = "allow_managment_m_eus2_inbound"
      priority               = "1120"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.188.48.0/22"
    },
    {
      name                   = "allow_managment_m_wus3_inbound"
      priority               = "1130"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.195.48.0/22"
    },
    {
      name                   = "allow_identity_i_cus_inbound_vm"
      priority               = "1200"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.56.0/22"
    },
    {
      name                   = "allow_identity_i_eus_inbound_vm"
      priority               = "1210"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.185.56.0/22"
    },
    {
      name                   = "allow_identity_i_eus2_inbound_vm"
      priority               = "1220"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.188.56.0/22"
    },
    {
      name                   = "allow_identity_i_wus3_inbound_vm"
      priority               = "1230"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "101.95.56.0/22"
    },
    {
      name                   = "allowmanagment_m_eus_inbound"
      priority               = "1110"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.185.48.0/22"
    },
    {
      name                   = "AzureLoadBalancer"
      priority               = "2030"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "MicrosoftDefenderForEndpoint"
      priority               = "2070"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "CognitiveServiceManagment"
      priority               = "2060"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "AzureMachineLearning"
      priority               = "2040"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "CognitiveServiceFrontEnd"
      priority               = "2050"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "AzureCogntiveSearch"
      priority               = "2010"
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "*"
    },
    {
      name                   = "allow_tfcagent_c_cus_outbound_vm"
      priority               = "1010"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.0.32/28"
    },
    {
      name                   = "allow_adoagent_c_cus_outbound_vm"
      priority               = "1020"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.0.32/28"
    },
    {
      name                   = "allow_core_vm_c_cus_outbound_vm"
      priority               = "1030"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.1.64/27"
    },
    {
      name                   = "allow_managment_m_cus_outbound"
      priority               = "1100"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.48.0/22"
    },
    {
      name                   = "allow_managment_m_eus2_outbound"
      priority               = "1120"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.188.48.0/22"
    },
    {
      name                   = "allow_managment_m_wus3_outbound"
      priority               = "1130"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.195.48.0/22"
    },
    {
      name                   = "allow_identity_i_cus_outbound_vm"
      priority               = "1200"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.172.56.0/22"
    },
    {
      name                   = "allow_identity_i_eus_outbound_vm"
      priority               = "1210"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.185.56.0/22"
    },
    {
      name                   = "allow_identity_i_eus2_outbound_vm"
      priority               = "1220"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.188.56.0/22"
    },
    {
      name                   = "allow_identity_i_wus3_outbound_vm"
      priority               = "1230"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "101.95.56.0/22"
    },
    {
      name                   = "allowmanagment_m_eus_outbound"
      priority               = "1110"
      direction              = "Outbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_address_prefix = "10.185.48.0/22"
    },
    # {
    #   name                   = "AzureLoadBalancer"
    #   priority               = "2030"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # },
    # {
    #   name                   = "MicrosoftDefenderForEndpoint"
    #   priority               = "2070"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # },
    # {
    #   name                   = "CognitiveServiceManagment"
    #   priority               = "2060"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # },
    # {
    #   name                   = "AzureMachineLearning"
    #   priority               = "2040"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # },
    # {
    #   name                   = "CognitiveServiceFrontEnd"
    #   priority               = "2050"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # },
    # {
    #   name                   = "AzureCogntiveSearch"
    #   priority               = "2010"
    #   direction              = "Outbound"
    #   access                 = "Allow"
    #   protocol               = "Tcp"
    #   destination_address_prefix = "*"
    # }

  ]

  tags = {
    environment = "Production"
    owner       = "kalyan"
  }
}
