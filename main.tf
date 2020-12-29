provider "aws" {
  region = "eu-east-1"
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-east-1a"

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}


resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.tags
  }
}
