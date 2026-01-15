environment      = "dev"
region           = "ap-northeast-1"
primary_vpc_cidr = "10.0.0.0/16"
peer_vpc_cidr    = "192.168.0.0/16"
vpn_cidr         = "172.16.0.0/24"
instance_type    = "t3.micro"
enable_spot      = false
key_pair_name    = "my-dev-keypair"
ssh_allowed_cidrs = [
  "203.0.113.45/32",
]
