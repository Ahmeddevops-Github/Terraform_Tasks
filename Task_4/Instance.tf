resource "aws_instance" "Terraform-Created-Centos_6_Instance" {
  ami                         = "ami-e3fdd999"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  iam_instance_profile        = "${aws_iam_instance_profile.Terraform-Created-Centos_IAM_Profile.name}"
  availability_zone           = "us-east-1a"

  tags = {
    Name = "Centos 6 Instance"
  }
}
