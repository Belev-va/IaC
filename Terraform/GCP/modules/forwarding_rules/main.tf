# forwarding rule
resource "google_compute_forwarding_rule" "forwarding_rule" {
  name                  = var.name
  port_range            = "443"
  target                = var.proxy_name
  ip_address            = var.address
  #network               = google_compute_network.ilb_network.id
  #subnetwork            = google_compute_subnetwork.ilb_subnet.id
  #network_tier          = "PREMIUM"
}