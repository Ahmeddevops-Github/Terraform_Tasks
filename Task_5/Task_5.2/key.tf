resource "aws_key_pair" "Terraform-Jenkins-Resource-Key-Pair" {
  key_name   = "Terraform-Jenkins-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
