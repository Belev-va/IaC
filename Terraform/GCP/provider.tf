provider "google" {
  credentials = file (var.cred)
  project = "howlight-429011"
  region  = "us-central1"
  zone    = "us-central1-c"
}

terraform {
  backend "gcs" {
    credentials = "howlight-429011-5462918077ef.json"
    bucket = "terraform-gcp-felix"
    prefix = "terraform/state"

  }
}