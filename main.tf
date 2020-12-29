terraform {
  required_version = ">= 0.12, < 0.13"
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}


resource "aws_instance" "web" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.small"
  
   tags = {
    Name = "HelloWorld"
  }
}
