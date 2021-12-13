output "PublicIP" {
  value = {
    dev_jboss_server_1 = aws_instance.frontend[0].public_ip
    dev_jboss_server_2 = aws_instance.frontend[1].public_ip
  }
}











