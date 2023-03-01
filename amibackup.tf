resource "aws_ami_from_instance" "apache" {
  name              = "Apache-ami-backup"
  source_instance_id =  "i-05b7805579c3d7d5c"
}