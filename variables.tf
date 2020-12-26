variable "ami" {
  description = "The type of ami to start"
  type        = string
  default     = data.aws_ami.ubuntu.id
}
variable "instance" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
}
variable "tags" {
  description = "Tags to the instance"
  type        = string
  default     = "HelloWorld"
}
