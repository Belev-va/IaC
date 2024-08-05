output "public_instance_ip" {
  value = module.master.external_ip
}
output "target_id" {
  value = module.target_tcp_proxy.proxy_id
}


