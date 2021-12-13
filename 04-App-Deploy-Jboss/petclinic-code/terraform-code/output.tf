output "PublicIP" {
  value = {
    dev_jboss_server_1 = aws_instance.frontend.public_ip
#    dev_jboss_server_1 = aws_instance.frontend_jboss[0].public_ip
#    dev_jboss_server_2 = aws_instance.frontend_jboss[1].public_ip
  }
}











