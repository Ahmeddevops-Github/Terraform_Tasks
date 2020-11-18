resource "aws_instance" "Terraform-R1Soft_Server-Provisioner" {
  ami                         = "${data.aws_ami.Terraform-R1Soft_Server-Centos_ami.id}"
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.Terraform-R1Soft_Server-Resource-Key-Pair.key_name}"
  security_groups             = ["${aws_security_group.Terraform-R1_Soft-Security_Group.name}"]

  tags = {
    Name = "R1 Server"
  }

  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform-R1Soft_Server-Provisioner.public_ip}"
    }

    source      = "r1soft.repo"
    destination = "/tmp/r1soft.repo"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform-R1Soft_Server-Provisioner.public_ip}"
    }

    inline = [
      "sudo mv /tmp/r1soft.repo /etc/yum.repos.d/r1soft.repo",
      "sudo yum install epel-release -y",
      "sudo yum update -y",
      "sudo yum install serverbackup-enterprise -y",
      "sudo serverbackup-setup --user Ahmed_Devops --pass Redhat",
      "sudo serverbackup-setup --http-port 80 --https-port 443",
      "sudo /etc/init.d/cdp-server restart",
    ]
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform-R1Soft_Server-Provisioner.public_ip}"
    }

    inline = [
      "sudo /etc/init.d/cdp-server restart",
      "sudo /etc/init.d/cdp-server restart",
    ]
  }

 
}

