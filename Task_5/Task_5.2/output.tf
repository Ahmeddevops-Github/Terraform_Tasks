output "Terraform-Jenkins_Instance" {
  value = "${aws_instance.Terraform-Jenkins_Instance.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}
