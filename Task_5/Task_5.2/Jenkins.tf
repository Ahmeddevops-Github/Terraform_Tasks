resource "aws_instance" "Terraform-Jenkins_Instance" {
  ami                    = "${data.aws_ami.Terraform-Jenkins-Centos_ami.id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.Terraform-Jenkins-Security_Group.id}"]
  key_name               = "${aws_key_pair.Terraform-Jenkins-Resource-Key-Pair.key_name}"

  tags = {
    Name = "Jenkins Server"
  }
}
