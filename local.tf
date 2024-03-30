locals {
  owner = var.business-devision
  environment = var.environment
  name = "${local.owner}-${local.environment}"
 # name = "${var.business-devision}-${var.environment}"

    common_tags = {

        owner = local.owner
        environment = local.environment 

    }
}