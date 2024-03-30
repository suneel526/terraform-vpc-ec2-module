variable "vpc_name" {
  
  type = string
  default = "my-vpc"

}

variable "cidr-block" {
  type = string
  default = "10.0.0.0/16"

}

variable "azs" {
  type = list(string)
  default = ["us-east-1a" , "us-east-1b"]
}
variable "public_sn" {
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_sn" {
  type = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "database_sn" {
  type = list(string)
  default = ["10.0.5.0/24" , "10.0.6.0/24"]
}

variable "create_database_subnet_group" {
  type = bool
  default = true

}

variable "database_subnet_route_table" {

    type = bool
    default = true
  
}

variable "vpc_enable_nat_gateway" {
 type = bool
 default =  true

}

variable "vpc_single_nat_gateway" {
  type = bool
  default = true
}