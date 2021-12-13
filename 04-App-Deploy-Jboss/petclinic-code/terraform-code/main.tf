resource "aws_instance" "frontend" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name = "Dev-Server(jboss)-1"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.pvt_key_name)
    host        = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
      "sudo sleep 30",
      "sudo apt-get update -y",
      "sudo apt-get install python sshpass -y"
    ]

  }
}

resource "null_resource" "ansible-main" {
  provisioner "local-exec" {
    command = <<EOT
       > jenkins-ci.ini;
       echo "[jenkins-ci]"|tee -a jenkins-ci.ini;
       export ANSIBLE_HOST_KEY_CHECKING=False;
       echo "${aws_instance.frontend.public_ip}"|tee -a jenkins-ci.ini;
       ansible-playbook --key-file=${var.pvt_key_name} -i jenkins-ci.ini -u ubuntu ./ansible-code/jboss.yaml -v 
     EOT
  }
  depends_on = [aws_instance.frontend]
}













