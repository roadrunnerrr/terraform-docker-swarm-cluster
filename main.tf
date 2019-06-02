provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

resource "aws_vpc" "vm_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vm_vpc"
  }
}

resource "aws_subnet" "vm_subnet" {
  vpc_id = "${aws_vpc.vm_vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "VladimirMarchuk/subnet"
  }
}

resource "aws_internet_gateway" "vm_gw" {
  vpc_id = "${aws_vpc.vm_vpc.id}"

  tags = {
    Name = "VladimirMarchuk/gateway"
  }
}


resource "aws_route_table" "vm_rt" {
  vpc_id = "${aws_vpc.vm_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.vm_gw.id}"
  }

  tags = {
    Name = "VladimirMarchuk/RT"
  }
}

resource "aws_route_table_association" "vm_rt_association" {
  subnet_id      = "${aws_subnet.vm_subnet.id}"
  route_table_id = "${aws_route_table.vm_rt.id}"
}


