# forwarding rule
resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  name                  = var.name
  port_range            = var.port
  target                = var.target
  ip_address            = var.address
  #network               = google_compute_network.ilb_network.id
  #subnetwork            = google_compute_subnetwork.ilb_subnet.id
  #network_tier          = "PREMIUM"
  load_balancing_scheme = "EXTERNAL"


}