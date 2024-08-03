
resource "google_compute_target_tcp_proxy" "default" {
  name            = var.name
  backend_service = var.backend_service
  proxy_header    = var.proxy_header
}
