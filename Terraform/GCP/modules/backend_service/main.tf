
resource "google_compute_backend_service" "general-service-backend" {
  name          = var.backend_service_name
  port_name     = var.backend_service_port_name
  protocol      = var.backend_service_protocol
  timeout_sec   = var.backend_service_timeout_sec
  health_checks = var.backend_service_health_checks

  backend {
    // group - (Required) The name or URI of a Compute Engine instance group
    // because of https://github.com/terraform-providers/terraform-provider-google/pull/1207
    // we can now use node-pools (k8s) with backends
    group = var.instance_group
  }
}