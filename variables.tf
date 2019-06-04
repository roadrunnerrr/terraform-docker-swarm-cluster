variable "region" {
  default = "eu-west-1"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-03c242f4af81b2365"
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
  default = "vladimir_marchuk_key"
}

