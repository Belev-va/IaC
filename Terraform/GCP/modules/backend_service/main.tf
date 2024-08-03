
resource "google_compute_backend_service" "general-service-backend" {
  name          = var.backend_service_name
  port_name     = var.backend_service_port_name
  protocol      = var.backend_service_protocol
  timeout_sec   = var.backend_service_timeout_sec
  health_checks = var.backend_service_health_checks

  backend {
     group = var.instance_group
  }
}