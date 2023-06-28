resource "aws_instance" "apache" {

  ami           = var.ami
  instance_type = var.instancetype
  key_name      = var.key_name
  subnet_id     = var.subnet_id
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


