#GCP Instance module

resource "google_compute_instance" "example" {
  count        = var.instance_count
  name         = "${var.instance_name}-${count.index}"
  machine_type = var.instance_type
  zone         = "${var.region}-${var.zone}"
  tags         = var.instance_tags

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
  metadata = {
    ssh-keys = "howlight:${file("root.pub")}"
    enable-oslogin : "FALSE"
  }

}








