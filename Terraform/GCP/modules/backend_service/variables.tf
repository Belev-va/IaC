variable "backend_service_timeout_sec" {
  default = "300"
}
variable "backend_service_protocol" {
  default = "TCP"
}
variable "backend_service_port_name" {
  type = string

}
variable "backend_service_name" {
  default = "talos-be"
}
variable "backend_service_health_checks" {

}

variable "instance_group" {

}
