module "public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  name = "${local.name}-bastion_host"
  ami = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.insance_key
 # monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = module.bastion_host_sg.security_group_id
  

  tags = local.common_tags

}
