output "Terraform-Jenkins_Instance" {
  value = "${aws_instance.Terraform-Jenkins_Instance.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}

# output "Jenkins AMI" {
#   value = "${data.aws_ami.Terraform-Jenkins_Instance.id}"
# }

# output "Jenkins Admin" {
#   value = "Ahmed_DevOps"
# }

# output "Jenkins Password" {
#   value = "Redhat"
# }