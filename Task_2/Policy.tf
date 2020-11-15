resource "aws_iam_policy" "Terraform-Resource-IAM_Policy" {
  name        = "Terraform-Resource-IAM_Infosec_Policy"
  path        = "/"
  description = "Infosec Group With PowerUser Access Policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*",
                "account:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization",
                "account:ListRegions"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_group_policy_attachment" "Terraform-Resource-IAM_Policy" {
  group      = "${aws_iam_group.Terraform-Resource-Group-Infosec.name}"
  policy_arn = "${aws_iam_policy.Terraform-Resource-IAM_Policy.arn}"
}
