output "control_plane_ip" {
  value = aws_instance.kiratech_challenge_control_plane.public_ip
}

output "worker_nodes_ip" {
  value = join("", aws_instance.kiratech_challenge_worker_nodes[*].public_ip)
}
