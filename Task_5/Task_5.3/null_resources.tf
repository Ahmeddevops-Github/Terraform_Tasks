resource "null_resource" "Terraform-Nagios-Null_Resource" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform-Nagios_Instance.public_ip}"
    }

    inline = [
      "sudo curl https://assets.nagios.com/downloads/nagiosxi/install.sh | sudo sh",
    ]
  }
}
