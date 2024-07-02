variable "project_id" {
  type           = string
  description  = "Project ID"
  default        = "NCC_Shared"
}

variable "region" {
  type           = string
  description  = "Region for this infrastructure"
  default        = "us-central1"
}

variable "name" {
  type           = string
  description  = "Name for this infrastructure"
  default       = "fg-us-interconnect"
}
