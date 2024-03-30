output "vpc_name" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr_block
}

output "vpc_public_subnet" {
  value = module.vpc.public_subnets
}

output "vpc_private_subnet" {
  value = module.vpc.private_subnets
}

output "vpc_database_subnet" {
  value = module.vpc.database_subnets
}

output "nat_gateway_IPS" {
  value = module.vpc.nat_public_ips
}
output "azs" {
  value = module.vpc.azs
}