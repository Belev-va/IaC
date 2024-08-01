
#General variables
variable "region" {
  type        = string
  default     = "europe-west1"
  description = "The GCP region to deploy resources in."
}
variable "zone" {
  type        = string
  default     = "b"
  description = "The GCP zone to deploy resources in."
}

variable "ig_name" {
  type        = string
  default     = "talos-ig"
}

variable "instances" {
  type = list(string)
}

variable "named_port_name" {
  type = string
  default = "tcp6443"
}
variable "named_port_port" {
  type = string
  default = "6443"
}