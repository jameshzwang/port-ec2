provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}

variable "name" {}
variable "ami" {}
variable "instance_type" {}
variable "region" {}
