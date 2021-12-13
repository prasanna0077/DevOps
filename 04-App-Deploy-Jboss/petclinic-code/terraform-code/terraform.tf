terraform {
  backend "local" {
    path = "/var/tmp/terraform-local-jboss/terraform.tfstate"
  }
}
