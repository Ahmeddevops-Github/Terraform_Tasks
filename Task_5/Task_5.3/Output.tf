output "Nagios AMI" {
  value = "${data.aws_ami.Terraform-Nagios-Centos_ami.id}"
}

output "Instance Type" {
  value = "${aws_instance.Terraform-Nagios_Instance.instance_type}"
}

output "Nagios IP" {
  value = "${aws_instance.Terraform-Nagios_Instance.public_ip}"
}
