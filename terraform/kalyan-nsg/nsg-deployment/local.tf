locals {

  nsg_security_rules = [
    {
      name      = "AllowHTTP"
      priority  = "100"
      direction = "Inbound"
      access    = "Allow"
      protocol  = "Tcp"
      # source_port_range          = "*"
      destination_port_range = "80"
      # source_address_prefix      = "Internet"
      # destination_address_prefix = "*"
    },
    {
      name      = "AllowSSH"
      priority  = "200"
      direction = "Inbound"
      access    = "Allow"
      protocol  = "Tcp"
      # source_port_range          = "*"
      destination_port_range = "22"
      # source_address_prefix      = "Internet"
      # destination_address_prefix = "*"
    },
    # Add more security rules as needed
  ]


  # nsg_security_rules = [
  #   [
  #     "allow_ssh",
  #     "100",
  #     "Inbound",
  #     "Allow",
  #     "Tcp",
  #     "80",
  #     "22",
  #     "192.168.0.9/32",
  #     "192.168.0.1/32",
  #   ],
  #   [
  #     "allow_http",
  #     "200",
  #     "Inbound",
  #     "Allow",
  #     "Tcp",
  #     "33",
  #     "80",
  #     "192.168.0.10/32",
  #     "192.168.0.1/32",
  #   ],
  #   [
  #     "allow_https",
  #     "300",
  #     "Inbound",
  #     "Allow",
  #     "Tcp",
  #     "21",
  #     "443",
  #     "192.168.0.55/32",
  #     "192.168.0.1/32",

  #   ]
  # ]

  tags = {
    environment = "Production"
    owner       = "kalyan"
  }
}


