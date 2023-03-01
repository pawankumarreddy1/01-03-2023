resource "aws_security_group" "ami_backup" {
  name        = "ami_backup"
  description = "Allow ssh"
  vpc_id      = "vpc-001deaaa131cf3847"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["43.225.22.30/32"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

    ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "pavan-sg"
  }
}