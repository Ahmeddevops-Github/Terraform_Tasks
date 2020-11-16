resource "aws_key_pair" "Terraform-Created-ubuntu-Key_Pair" {
  key_name   = "Task_3-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
