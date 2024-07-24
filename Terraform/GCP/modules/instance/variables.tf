
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

variable "cidr_range" {
  type        = string
  default     = "192.168.1.0/24"
  description = "The IP CIDR range to use for the cluster's VPC subnetwork."
}

variable "instance_count" {
   type        = string
   default     = "2"
   description = "Count of instances"
}
 variable "instance_name" {
   type        = string
   default     = "talos"
   description = "Name for instances."
 }
# Configuration variables

variable "instance_type" {
  type        = string
  default     = "e2-medium"
  description = "The compute engine machine type to use for client instances."
}

variable "disk_size" {
  type        = string
  default     = "20"
  description = "The compute engine disk size in GB to use for server instances."
}

variable "image" {
  type        = string
  default     = "projects/cos-cloud/global/images/family/cos-stable"
  description = "The GCP image name (built with Packer)."
}


variable "ig_name" {
  type = string
  default = "talos-ig"
}


