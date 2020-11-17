resource "aws_iam_policy" "Terraform-Created-Centos_IAM_Admin_Policy" {
  name        = "Admin-Access-Only"
  description = "Admin Access Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "Terraform-Created-Centos_IAM_Admin_Policy-Attachment" {
  role       = "${aws_iam_role.Terraform-Created-Centos_IAM_Admin_Role.name}"
  policy_arn = "${aws_iam_policy.Terraform-Created-Centos_IAM_Admin_Policy.arn}"
}

