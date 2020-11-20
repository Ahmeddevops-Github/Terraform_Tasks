resource "aws_key_pair" "Terraform-Nagios-Resource-Key-Pair" {
  key_name   = "Terraform-Nagios-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
