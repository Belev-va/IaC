
#General variables
variable "cred" {
  type        = string
  default     = "howlight-429011-5462918077ef.json"
  description = "path to credential json file for gcp"
}

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
