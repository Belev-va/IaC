variable "health_check_name" {
  type = string
  default = "health-check"
}

variable "health_check_timeout" {
  default = 1
}

variable "health_check_interval_sec" {
  default = 1
}
variable "health_check_healthy_threshold" {
  default = 4
}
variable "health_check_unhealthy_threshold" {
  default = 5
}
variable "health_check_port" {
  default = "6443"
}
variable "health_check_port_name" {
  default = "health-check-port"
}
variable "health_check_port_specification" {
  default = "USE_NAMED_PORT"
}
variable "health_check_request" {
  default = "ARE YOU HEALTHY?"
}
variable "health_check_proxy_header" {
  default = "NONE"
}
variable "health_check_response" {
  default = "I AM HEALTHY"
}