module "ec2_fleet" {
  source    = "./module/ec2"
  instances = var.instances
}