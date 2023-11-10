variable "environment" {
	default		= "cloud-scs"
	description = "Environment Name"
}
variable "cred" {}
variable "url" {}
variable "myip" {
	type = string
	default = "73.254.158.216/32"
  
}

variable "ssh_key" {
       default = "/var/tmp/newscs.pem"
}

variable "api_url" {
	type = string
	default = "https://f5-sa.console.ves.volterra.io/api"
}

variable "aws_region" {
	description = "Region in which environment will be launched"
	type = string
	default = "us-west-2"
}

variable "aws_xc_instance_type" {
	type = string
	default = "t3.xlarge"
}

variable "zone_name" {
	type 		= string
	default 	= "private-olive-amphibian.github.securelab.online"
	description = "Generated from https://tool.xc-mcn.securelab.online/ tool "
}

variable "aws_vpc_cidr" {
	type 		= string
	default 	= "10.0.0.0/16"
	description = "CIDR block of the vpc"
}

variable "aws_public_subnets_cidr" {
	type        = list(string)
	default 	= ["10.0.10.0/24"]
	description = "CIDR block for Public Subnet"
}

variable "aws_private_subnets_cidr" {
	type        = list(string)
	default 	= ["10.0.20.0/24"]
	description = "CIDR block for Private Subnet"
}

variable "aws_workload_subnets_cidr" {
	type        = list(string)
	default 	= ["10.0.30.0/24"]
	description = "CIDR block for Workload Subnet"
}

variable "aws_availability_zones" {
	type        = list(string)
	default     = ["us-west-2a"]
	description = "AZ in which all the resources will be deployed"
}

variable "xc_remote_cidr" {
	type 		= string
	default 	= "192.168.0.0/16"
	description = "Remote CIDR"
}

variable "demo_vm_ip" {
	type 		= string
	default 	= "10.0.20.100"
	description = "Ip Address for demo-vm"
}
