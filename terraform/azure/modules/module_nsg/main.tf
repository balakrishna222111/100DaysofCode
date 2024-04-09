module "tf_nsg" {
  source              = "../nsg"
  nsg_name            = "tf-nsg"
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
      "192.168.0.1/32",
      "192.168.0.1/32",
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
  ]
}