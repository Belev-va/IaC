



module "master" {
  source                  = "./modules/instance"
  instance_name           = "talos-controlplane"
  #instance_type           = "n2-standard-2"
  instance_count          = 3
  #instance_subnet_id      = module.network.private_subnet_id
  #instance_security_group = [module.security_group.private_security_group_id]
  image = "talos"
  instance_tags =  [ "talos-controlplane"]

}

module "worker" {
  source                  = "./modules/instance"
  instance_name           = "talos-worker"
  #instance_type           = "n2-standard-2"
  instance_count          = 1
  #instance_subnet_id      = module.network.private_subnet_id
  #instance_security_group = [module.security_group.private_security_group_id]
  image = "talos"

}


module "instance_group" {
  source = "./modules/instance_group"
  ig_name = "talos-ig"
  instances = concat(module.master.self_links, module.worker.self_links)

}

module "health_check" {
  source = "./modules/healthcheck"
  health_check_name = "talos-health-check"
}

module "firewall_rules_0" {
  source = "./modules/firewall"
  ports = ["6443"]
  source_ranges = ["130.211.0.0/22","35.191.0.0/16"]
  name = "talos-controlplane-firewall"
}

module "firewall_rules_1" {
  source = "./modules/firewall"
  name = "talos-controlplane-talosctl"
}

module "backend_service" {
  source = "./modules/backend_service"

  backend_service_health_checks = module.health_check.name
  backend_service_port_name     = module.instance_group.named_port
  instance_group                = module.instance_group.instance_group_self_link
}





