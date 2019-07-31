variable "name" {
  default     = "openvpn"
  description = "OpenVPN instance name"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC to use"
}

variable "vpc_cidr" {
  description = "VPC CIDRs to use"
}

variable "public_subnet_ids" {
  description = "Public Subnet IDs"
}

variable "route_zone_id" {
  type        = string
  description = "Route Zone ID"
}

variable "domain" {
  type        = string
  description = "Public domain to assign to the openVPN host. With a value of 'example.com', the resulting value will be 'vpn.example.com'."
}

variable "instance_type" {
  type        = string
  default     = 't2.micro'
  description = "OpenVPN EC2 instance type"
}

variable "key_name" {
  type        = string
  description = "Key pair name"
}

variable "ebs_size" {
  type        = number
  default     = 1
  description = "EBS volume size (GB). This volume will store OpenVPN credentials and certificates."
}

variable "ebs_region" {
  type        = string
  description = "Region for the EBS volume."
}

variable "ami" {
  type        = string
  description = "AMI ID to use for the EC2 instance"
}

