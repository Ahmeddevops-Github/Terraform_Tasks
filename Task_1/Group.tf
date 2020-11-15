resource "aws_iam_group" "Terraform-Resource-Group_Developer" {
  name = "Developer"
  path = "/"
}

resource "aws_iam_group_membership" "Terraform-Resource-Group_Developer_Team" {
  name = "Developer Members"

  users = [
    "${aws_iam_user.Terraform-Resource-User-Created-Task1_Bob.name}",
    "${aws_iam_user.Terraform-Resource-User-Created-Task1_Tim.name}",
    "${aws_iam_user.Terraform-Resource-User-Created-Task1_Ben.name}",
  ]

  group = "${aws_iam_group.Terraform-Resource-Group_Developer.name}"
}

resource "aws_iam_group" "Terraform-Resource-Group_Management" {
  name = "Management"
  path = "/"
}

resource "aws_iam_group_membership" "Terraform-Resource-Group_Management_Team" {
  name = "Management Members"

  users = [
    "${aws_iam_user.Terraform-Resource-User-Created-Task1_Ben.name}",
  ]

  group = "${aws_iam_group.Terraform-Resource-Group_Management.name}"
}
