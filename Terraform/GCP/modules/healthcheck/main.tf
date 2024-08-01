#


resource "google_compute_health_check" "health-check" {
  name        = var.health_check_name



  timeout_sec = var.health_check_timeout
  check_interval_sec  = var.health_check_interval_sec
  healthy_threshold   = var.health_check_healthy_threshold
  unhealthy_threshold = var.health_check_unhealthy_threshold

  tcp_health_check {
    port = var.health_check_port
    port_name          = var.health_check_port_name
    request            = var.health_check_request
    proxy_header       = var.health_check_proxy_header
    response           = var.health_check_response
  }
}

