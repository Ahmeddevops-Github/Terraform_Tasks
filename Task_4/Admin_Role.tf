resource "aws_iam_role" "Terraform-Created-Centos_IAM_Admin_Role" {
  name = "Terraform-Admin_Role"
  path = "/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "Terraform-Created-Centos_IAM_Profile" {
  name  = "Terraform-Admin_Profile"
  role = "${aws_iam_role.Terraform-Created-Centos_IAM_Admin_Role.name}"
}

