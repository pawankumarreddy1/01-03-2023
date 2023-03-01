resource "aws_instance" "apache" {

  ami           = "ami-0329eac6c5240c99d"
  instance_type = "t2.micro"
  key_name      = "example"
  subnet_id     = "subnet-0ff4fcbdfa77d41aa"
  security_groups = [aws_security_group.ami_backup.id]
  user_data = <<EOF
  #!bin/bash
  yum update -y
  yum install httpd -y
  systemctl start httpd 
  systemctl enable httpd 
  EOF

  tags = {
    Name = "apache"
  }
}


