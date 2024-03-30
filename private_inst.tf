module "private_instance" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
  name = "single-instance"
  ami = data.aws_ami.amzlinux2
  instance_type          = var.instance_type
  
  key_name               = var.insance_key
  
  # monitoring             = true
  
  vpc_security_group_ids = [module.private_sg.security_group_id]
  
  subnet_id = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  
  count = var.instances_count 
  
  tags = local.common_tags 

}