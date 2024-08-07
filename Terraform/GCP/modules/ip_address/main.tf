
resource "google_compute_global_address" "ip_address" {
  name = var.name
  address_type  = "EXTERNAL"
}