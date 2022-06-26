provider "aws" {
  region  = "eu-west-3"
  profile = var.profile
}

resource "aws_instance" "rmq" {
  ami                    = "ami-0f5094faf16f004eb"
  instance_type          = "t2.micro"
  key_name               = "rabbitmq"
  vpc_security_group_ids = ["sg-0a34a4aab9bd56a69"]

  tags = {
    Name  = var.name
    group = var.group
  }
}