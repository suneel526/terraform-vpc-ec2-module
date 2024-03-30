module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.7.0"

     name = "${local.name}-${var.vpc_name}"
    cidr = var.cidr-block
    azs = var.azs
    public_subnets = var.public_sn
    private_subnets = var.private_sn
    database_subnets = var.database_sn
    create_database_subnet_group = var.create_database_subnet_group
    create_database_subnet_route_table = var.database_subnet_route_table
    
    enable_nat_gateway = var.vpc_enable_nat_gateway
    single_nat_gateway = var.vpc_single_nat_gateway

   tags = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }

}