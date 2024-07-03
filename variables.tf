variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "project_id_prefix" {
  description = "The prefix for the project ID"
  type        = string
}

variable "org_id" {
  description = "The organization ID"
  type        = string
}

variable "billing_account" {
  description = "The billing account ID"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "subnets" {
  description = "Subnets to create in the VPC"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
  default = [
    {
      name   = "subnet-1"
      cidr   = "10.0.1.0/24"
      region = "us-central1"
    },
    {
      name   = "subnet-2"
      cidr   = "10.0.2.0/24"
      region = "us-east1"
    }
  ]
}