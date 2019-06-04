resource "aws_security_group" "vm_docker_swarm_SG" {
  name = "vm_docker_swarm_SG"
  description = "Security group for docker swarm cluster"

  # Allow all inbound TCP
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound TCP
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Enable ICMP
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VM_SG"
  }
}

