terraform {
  required_version = ">= 0.12, < 0.13"
}
provider "aws" {
  region = "us-east-1"
}
data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = data.aws_vpc.default.id
}

resource "aws_instance" "web" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t3a.small"
  subnet_id     = tolist(data.aws_subnet_ids.all.ids)[0]
  tags = {
    Name = "HelloWorld"
  }
}
