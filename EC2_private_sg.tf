module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "5.1.2"

  name = "private-sg"
  description = "Security Group with HTTP & SSH port open for entire VPC Block (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  
  # this rule defines all traffic for outbound traffic
  egress_rules = ["all-all"]
  tags = local.common_tags
  
  } 