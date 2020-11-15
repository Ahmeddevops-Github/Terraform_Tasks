resource "aws_iam_group" "Terraform-Resource-Group-Infosec" {
  name = "Infosec"
  path = "/"
}

resource "aws_iam_group_membership" "Terraform-Resource-Group-Infosec_Team" {
  name = "Infosec Members"

  users = [
    "${aws_iam_user.Terraform-Resource-User-Created-Task2_Ron.name}",
    "${aws_iam_user.Terraform-Resource-User-Created-Task2_Sam.name}",
    "${aws_iam_user.Terraform-Resource-User-Created-Task2_Billy.name}",
  ]

  group = "${aws_iam_group.Terraform-Resource-Group-Infosec.name}"
}
