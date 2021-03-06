provider "aws" {
  region             = "us-east-1"
}
resource "aws_instance" "sample" {
  ami            ="ami-074df373d6bafa625"
  instance_type  = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "sample"
  }
}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "alow_ssh"


  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags               = {
    Name             = "allow_ssh"
  }
}
output "sg_attributes" {
  value              = aws_security_group.allow_ssh
}
