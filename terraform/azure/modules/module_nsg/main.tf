module "example_nsg" {
  source              = "../nsg"
  nsg_name            = "example-nsg"
  resource_group_name = "test"
  location = "East US"

security_rules = [
    [
      "allow_ssh",
      "1001",
      "Inbound",
      "Allow",
      "Tcp",
      "*",
      "22",
      "*",
      "*",
    ],
    [
      "allow_http",
      "1002",
      "Inbound",
      "Allow",
      "Tcp",
      "*",
      "80",
      "*",
      "*",
    ]
    # Add more security rules as needed
  ]
}