provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source          = "./vpc"
  vpc_cidr        = "10.0.0.0/16"   # parameter for module vpc
  public_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"] 
}


module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id  # ref vpc/outputs.tf file  

  subnet1 = module.vpc.subnet1 # ref vpc/outputs.tf file 

  subnet2 = module.vpc.subnet2 # ref vpc/outputs.tf file 
}