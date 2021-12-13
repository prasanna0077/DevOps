variable "key_name" {
  default = "terraform-key-pair"
  #  default = "KP-Master-Server"
}

variable "pvt_key_name" {
  default = "/root/.ssh/terraform-key.pem"
  #  default = "/root/.ssh/my-key.pem"
}


variable "sg_id" {
  default = "sg-04c1b0a05d6d00bad"
}


variable "ami_id" {
  default = "ami-05803413c51f242b7"
}


variable "region" {
  default = "us-east-2"
}
