provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source          = "./vpc"
  vpc_cidr        = "10.0.0.0/16"   # parameter for module vpc
  public_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]  
}


module "ec2" {
  source         = "./ec2"
  my_public_key  = "~/.ssh/MyKeyPair.pub"  # "/tmp/id_rsa.pub"
  instance_type  = "t2.micro"
  security_group = module.vpc.security_group
  subnets        = module.vpc.public_subnets
}

module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id  # ref vpc/outputs.tf file  

  instance1_id = module.ec2.instance1_id
  instance2_id = module.ec2.instance2_id
 
}