resource "aws_eip" "Terraform-Created-Elastic_IP" {
  instance = "${aws_instance.Terraform-Created-Centos_6_Instance.id}"
  vpc      = true
}
