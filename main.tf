
provider "aws" {
  region = "us-east-1"
}
module "ec2_cluster"{
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-0885b1f6bd170450c"
  instance_type          = "t2.micro" 
  vpc_security_group_ids = ["sg-01502b83a623cf6a5"]
  subnet_id              = "subnet-06035f9997fdb6ccb"

  tags = {
    Terraform   = "true"
  }
}
