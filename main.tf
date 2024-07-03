# Provider configuration
provider "google" {
  credentials = file("path/to/your/service-account-key.json")
  project     = var.project_id
  region      = var.region
}

# Random ID to append to project name for uniqueness
resource "random_id" "project_id_suffix" {
  byte_length = 4
}

# Create a new GCP Project
resource "google_project" "my_project" {
  name            = var.project_name
  project_id      = "${var.project_id_prefix}-${random_id.project_id_suffix.hex}"
  org_id          = var.org_id
  billing_account = var.billing_account
}

# Enable necessary APIs
resource "google_project_service" "compute_api" {
  project = google_project.my_project.project_id
  service = "compute.googleapis.com"

  disable_on_destroy = false
}

# Create VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_name}-vpc"
  auto_create_subnetworks = false
  project                 = google_project.my_project.project_id
  depends_on              = [google_project_service.compute_api]
}

# Create Subnets
resource "google_compute_subnetwork" "subnets" {
  count         = length(var.subnets)
  name          = var.subnets[count.index].name
  ip_cidr_range = var.subnets[count.index].cidr
  region        = var.subnets[count.index].region
  network       = google_compute_network.vpc.id
  project       = google_project.my_project.project_id
}

