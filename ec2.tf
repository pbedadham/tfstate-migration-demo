# ec2.tf

provider "aws" {
  region = var.region  # Change this to your desired AWS region
}

resource "aws_instance" "this" {
  ami           = var.ami           # Replace with your desired AMI ID
  instance_type = var.instance_type # Replace with your desired instance type

  tags = {
    Name = "demo-instance"
  }
}
