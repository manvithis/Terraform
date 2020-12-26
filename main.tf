provider "aws" {
  region = "eu-west-1"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"
  name                   = "my-cluster"
  instance_count         = 2
  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
