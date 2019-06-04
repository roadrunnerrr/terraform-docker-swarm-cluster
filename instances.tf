resource "aws_instance" "vm_docker_master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.vm_docker_swarm_SG.id}"]
  key_name = "${var.key_name}"

  tags = {
    Name = "VladimirMarchuk/master"
  }
}

resource "aws_instance" "vm_docker_worker" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.vm_docker_swarm_SG.id}"]
  key_name = "${var.key_name}"

  tags = {
    Name = "VladimirMarchuk/worker"
  }
}

