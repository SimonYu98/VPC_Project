variable "environment" {
	type        = string
	description = "Deployment environment name (e.g., dev, staging, prod)."
}

variable "region" {
	type        = string
	description = "AWS region for deploying core infrastructure."
}

variable "primary_vpc_cidr" {
	type        = string
	description = "CIDR block for the primary VPC; must not overlap with peer or VPN networks."
}

variable "peer_vpc_cidr" {
	type        = string
	description = "CIDR block for the peered VPC; ensure it stays disjoint from the primary VPC CIDR."
}

variable "vpn_cidr" {
	type        = string
	description = "CIDR block allocated for VPN clients and routes; keep it unique across networks."
}

variable "instance_type" {
	type        = string
	description = "Default EC2 instance type for compute workloads."
	default     = "t3.micro"
}

variable "enable_spot" {
	type        = bool
	description = "Whether to launch supported compute instances using EC2 Spot capacity."
	default     = false
}

variable "key_pair_name" {
	type        = string
	description = "Existing EC2 key pair name used for SSH access."
}

variable "ssh_allowed_cidrs" {
	type        = list(string)
	description = "CIDR blocks allowed to access exposed SSH endpoints."
}
