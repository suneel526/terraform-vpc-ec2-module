output "public_instance" {
 value =  module.public_instance.id
}

output "public_instance_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.public_instance.public_ip
}

output "private_instance" {
  value = module.private_instance.id
}

output "private_instance_private_ip" {
  
  value = module.private_instance.private_ip
}