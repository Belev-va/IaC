#Variables for firewall

variable "name" {
  type        = string
  default     = "custom_firewall"
}

variable "network" {
  default = "default"
}

variable "ports" {
  type = list(string)
  default = ["50000"]
}

variable "protocols" {
  type = string
  default = "tcp"
}

variable "source_ranges" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "target_tags" {
  type = list(string)
  default = ["talos-controlplane"]
}





