module "ec2" {
  source = "./modules/ec2"

  instances               = var.instances
  environment              = var.environment
  owner                    = var.owner
  subnet_id                = var.subnet_id
  vpc_security_group_ids   = var.vpc_security_group_ids
  ami_id                   = var.ami_id
}





module "ec2_fleet" {
  source = "./module/ec2"

  instances = {
    web-1 = {
      instance_type     = "t3.micro"
      ami_id             = "ami-0c55b159cbfafe1f0"
      root_volume_type   = "gp3"
      root_volume_size   = 20
      key_name           = "my-keypair"
      environment        = "dev"
      owner              = "nishant"
    }
    web-2 = {
      instance_type     = "t3.small"
      ami_id             = "ami-0c55b159cbfafe1f0"
      root_volume_type   = "gp3"
      root_volume_size   = 30
      key_name           = "my-keypair"
      environment        = "dev"
      owner              = "nishant"
    }
    web-critical = {
      instance_type     = "m5.large"
      ami_id             = "ami-0c55b159cbfafe1f0"
      root_volume_type   = "io2"
      root_volume_size   = 50
      key_name           = "my-keypair"
      environment        = "prod"
      owner              = "nishant"
    }
    web-4 = {
      instance_type     = "t3.medium"
      ami_id             = "ami-0c55b159cbfafe1f0"
      root_volume_type   = "gp2"
      root_volume_size   = 25
      key_name           = "my-keypair"
      environment        = "dev"
      owner              = "nishant"
    }
    web-5 = {
      instance_type     = "t3.large"
      ami_id             = "ami-0c55b159cbfafe1f0"
      root_volume_type   = "gp3"
      root_volume_size   = 40
      key_name           = "my-keypair"
      environment        = "staging"
      owner              = "nishant"
    }
  }
}