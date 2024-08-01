output "name" {
  value = google_compute_health_check.health-check[*].self_link
}

