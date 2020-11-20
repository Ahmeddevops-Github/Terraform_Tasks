resource "aws_instance" "Terraform-Nagios_Instance" {
  ami                    = "${data.aws_ami.Terraform-Nagios-Centos_ami.id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.Terraform-Nagios-Security_Group.id}"]
  key_name               = "${aws_key_pair.Terraform-Nagios-Resource-Key-Pair.key_name}"

  tags = {
    Name = "Nagios Instance"
  }
}
