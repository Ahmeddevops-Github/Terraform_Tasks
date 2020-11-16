resource "aws_instance" "Terraform-Created-ubuntu_Insatnce" {
  ami                         = "ami-0739f8cdb239fe9ae"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-1a"
  key_name                    = "${aws_key_pair.Terraform-Created-ubuntu-Key_Pair.key_name}"
  associate_public_ip_address = "true"
  user_data                   = "${file("userdata_file.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.Terraform-Task_3-Security-Group.id}"]

  tags = {
    Name        = "Ubuntu"
    Environment = "Dev"
  }
}
