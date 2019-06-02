variable "region" {
  default = "us-east-1"
}

variable "access_key" {
}

variable "secret_key" {
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-0756fbca465a59a30"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install-docker.sh"
}

variable "key_name" {
  default = "ec2key"
}

