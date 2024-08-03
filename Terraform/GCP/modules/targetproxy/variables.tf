variable "name" {
  type = string
  default = "talos-tcp-proxy"
}

variable "proxy_header" {
  type = string
  default = "NONE"
}

variable "backend_service" {

}