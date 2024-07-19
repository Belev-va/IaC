


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

module "master_nods" {
  source                  = "./modules/instance"
  instance_name           = "minecraft"
  #instance_type           = "n2-standard-2"
  instance_count          = 1
  #instance_subnet_id      = module.network.private_subnet_id
  #instance_security_group = [module.security_group.private_security_group_id]
}

