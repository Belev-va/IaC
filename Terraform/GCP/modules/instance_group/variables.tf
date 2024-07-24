
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