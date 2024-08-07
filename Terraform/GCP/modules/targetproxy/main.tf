
resource "google_compute_target_tcp_proxy" "tcp_proxy" {
  name            = var.name
  backend_service = var.backend_service
  proxy_header    = var.proxy_header
}
