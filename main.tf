provider "aws" {
  region  = "us-east-1"

}

resource "aws_instance" "chintu" {
  ami           = "ami-03ba3948f6c37a4b0"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu"
  }
 }
