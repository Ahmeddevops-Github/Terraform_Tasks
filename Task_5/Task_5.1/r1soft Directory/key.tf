resource "aws_key_pair" "Terraform-R1Soft_Server-Resource-Key-Pair" {
  key_name   = "Terraform-R1Soft_Server-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

