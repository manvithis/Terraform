provider "aws" {
  region  = "us-east-1"

}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-west-2a"

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}

resource "aws_instance" "chintu" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu"
  }
 }
