output "master_public_ip" {
    value = ["${aws_instance.vm_docker_master.public_ip}"]
}
output "worker_public_ip" {
    value = ["${aws_instance.vm_docker_worker.public_ip}"]
}

