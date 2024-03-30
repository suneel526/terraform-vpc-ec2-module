module "bastion_host_sg" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "5.1.2"

  name = "public_sg"
  description = "this is a public_bastion_security_group subnet having access to port 22 and egress ports all"
  vpc_id = module.vpc.vpc_id
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  
  # this rule defines all traffic for outbound traffic
  egress_rules = ["all-all"]
  tags = local.common_tags
  
  }