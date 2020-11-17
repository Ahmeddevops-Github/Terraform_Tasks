resource "aws_ebs_volume" "Terraform-Created-Elastic_Block_Store" {
  availability_zone = "us-east-1a"
  size              = 100
}

resource "aws_volume_attachment" "Elastic_Block_Store_Attachment" {
  device_name = "/dev/sdi"
  volume_id   = "${aws_ebs_volume.Terraform-Created-Elastic_Block_Store.id}"
  instance_id = "${aws_instance.Terraform-Created-Centos_6_Instance.id}"
}
