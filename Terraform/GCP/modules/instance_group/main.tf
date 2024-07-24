#GCP Instance_group module

resource "google_compute_instance_group" "ig" {
  name        = var.ig_name
  zone        = "${var.region}-${var.zone}"
  #network     = google_compute_network.default.id
  instances   =  var.instances
}







