# variables.tf

variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "us-central1"
}

variable "vpc_name" {
  description = "The name of the VPC network."
  type        = string
  default     = "fg-intercon-us"
}

variable "subnets" {
  description = "A map of subnet names to their respective CIDR ranges."
  type        = map(string)
  default     = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
  }
}
