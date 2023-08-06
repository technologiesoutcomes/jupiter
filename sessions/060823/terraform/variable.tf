variable "private_subnets" {
  type    = list(string)
  default = ["10.20.0.0/19", "10.20.32.0/19"]
}

variable "public_subnets" {
  type = list(string)
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["eu-west-2a", "eu-west-2b"]
}

variable "vpc_name" {
  type = string
}

