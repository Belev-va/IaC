#GCP Instance_group module


resource "google_compute_instance_group" "ig" {
  name        = var.ig_name
  zone        = "${var.region}-${var.zone}"
  #network     = google_compute_network.default.id
  instances   =  var.instances

  named_port {
    name = var.named_port_name
    port = var.named_port_port
  }

}







