terraform {
  required_version = ">= 0.12, < 0.13"
}
provider "aws" {
  region = "us-east-1"
}
data "aws_subnet_ids" "private" {
  vpc_id = "vpc-0c1ca6a9599bb1b14"
 }


resource "aws_instance" "web" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.small"
  
  subnet_id = "subnet-064a08b59a92c98c5"
  tags = {
    Name = "HelloWorld"
  }
}
