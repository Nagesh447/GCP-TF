variable "project_id" {
  type           = string
  description  = "Project ID"
  default        = "seventh-circle-428201-b2"
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
