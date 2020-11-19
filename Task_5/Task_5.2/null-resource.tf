resource "null_resource" "Terraform-Jenkins-Null_Resource" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform-Jenkins_Instance.public_ip}"
    }

    inline = [
      "sudo yum install epel-release -y",
      "sudo yum update -y",
      "sudo yum install wget -y",
      "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade",
      "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins",
    ]
  }
}
