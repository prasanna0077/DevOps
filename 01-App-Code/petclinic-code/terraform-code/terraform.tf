terraform {
  backend "local" {
    path = "/var/tmp/terraform-local-tomcat/terraform.tfstate"
  }
}
