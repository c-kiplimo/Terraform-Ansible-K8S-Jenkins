#  ---------------------------- aws  variables ----------------------------
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "cidr_subnet1" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}


variable "availability_zone" {
  description = "availability zone to create subnet"
  default     = "eu-north-1a"
}
variable "environment_tag" {
  description = "Environment tag"
  default     = "Production"

}


variable "os_names" {
  type    = list(string)
  default = ["Ansible_controller_node", "K8S_Master", "K8S_Slave1", "K8S_Slave2"]

}

variable "az" {
  type    = list(string)
  default = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]

}
variable "subnet_names" {
  type    = list(string)
  default = ["subnet-1", "subnet-2", "subnet-3"]

}


variable "instance_types" {
  type = map(any)
  default = {
    eu_north-1a  = "t3.micro",
    eu_north-1b = "t3.micro",
    eu-north-1c  = "t3.micro"
  }
}

variable "master_node" {
  type = map(any)
  default = {
    aws_prod = "t3.micro"
  }
}
# variable "AWS_ACCESS_KEY_ID" {
#   description = "AWS access key ID"
#   type        = string
#   sensitive   = true
# }

# variable "AWS_SECRET_ACCESS_KEY" {
#   description = "AWS secret access key"
#   type        = string
#   sensitive   = true
# }