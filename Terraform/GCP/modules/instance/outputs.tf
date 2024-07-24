output "external_ip" {
  value = google_compute_instance.example[*].network_interface[0].access_config[0].nat_ip
}

output "id" {
  value = google_compute_instance.example[*].instance_id
}

output "name" {
  value = google_compute_instance.example[*].name
}


output "self_links" {
  value = [for instance in google_compute_instance.example : instance.self_link]
}