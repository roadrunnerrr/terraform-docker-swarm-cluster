resource "aws_instance" "vm_docker_master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.vm_docker_swarm_SG.id}"]
  subnet_id = "${aws_subnet.vm_subnet.id}"
  associate_public_ip_address = true
  key_name = "vladimir_marchuk_key"

  tags = {
    Name = "VladimirMarchuk/master"
  }
}

resource "aws_instance" "vm_docker_worker" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.vm_docker_swarm_SG.id}"]
  subnet_id = "${aws_subnet.vm_subnet.id}"
  associate_public_ip_address = true
  key_name = "vladimir_marchuk_key"  

  tags = {
    Name = "VladimirMarchuk/worker"
  }
}

