# public bastion host security group id

output "public_security_group_id" {
  description = "The ID of the security group"
  value       = module.bastion_host_sg.security_group_id
}

# public bastion host security group vpc id

output "public_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.bastion_host_sg.security_group_vpc_id
}

# public bastion host security group name

output "public_security_group_name" {

  description = "The name of the security group"
  value       = module.bastion_host_sg.security_group_name

}

# private bastion host security group id

output "private_security_group_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}

# private bastion host security group vpc id

output "private_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}

# private bastion host security group name
output "private_security_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}