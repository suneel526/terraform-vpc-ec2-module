resource "aws_eip" "bastion_host" {
  depends_on = [ module.public_instance, module.vpc ]
  instance = module.public_instance.id[0]
  domain   = "vpc"
  tags = local.common_tags
}