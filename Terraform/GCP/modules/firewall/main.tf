
# Default security group
resource "google_compute_firewall" "default" {
  name    = var.name
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["8080", "8000", "8888", "9990", "5432"]
  }

  target_tags = ["t-app"]
  source_tags = ["s-app"]
}



