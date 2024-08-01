output "instance_group_self_link" {
  value = google_compute_instance_group.ig.self_link
}

output "named_port" {
  value = google_compute_instance_group.ig.named_port[0].name
}