resource "aws_ami_from_instance" "apache" {
  name              = "Apache-ami-backup"
  source_instance_id = var.source_instance_id
}