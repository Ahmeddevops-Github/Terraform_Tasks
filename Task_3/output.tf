output "Key_Name" {
  value = "${aws_key_pair.Terraform-Created-ubuntu-Key_Pair.key_name}"
}

output "AZ" {
  value = "${aws_instance.Terraform-Created-ubuntu_Insatnce.availability_zone}"
}

output "PIP" {
  value = "${aws_instance.Terraform-Created-ubuntu_Insatnce.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}
