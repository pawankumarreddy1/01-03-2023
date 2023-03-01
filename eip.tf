resource "aws_eip" "pavan-eip" {
  vpc              = true
#   region           = "ap-northeast-1"
  instance         = aws_instance.apache.id
#   associate_with_private_ip = "10.0.0.10"
}

