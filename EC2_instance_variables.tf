variable "instance_type" {
  type = string
  default  = "t2.micro"

}

variable "insance_key" {
  type = string
  default = "jenkins"
}

variable "instances_count" {
  type = number
  default = 2
}