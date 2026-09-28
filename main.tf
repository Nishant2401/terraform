module "ec2" {
  source = "./modules/ec2"

  instances               = var.instances
  environment              = var.environment
  owner                    = var.owner
  subnet_id                = var.subnet_id
  vpc_security_group_ids   = var.vpc_security_group_ids
  ami_id                   = var.ami_id
}