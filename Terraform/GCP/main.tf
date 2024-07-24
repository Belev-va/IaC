



module "master" {
  source                  = "./modules/instance"
  instance_name           = "talos-controlplane"
  #instance_type           = "n2-standard-2"
  instance_count          = 3
  #instance_subnet_id      = module.network.private_subnet_id
  #instance_security_group = [module.security_group.private_security_group_id]
  image = "talos"

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






