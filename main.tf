# main.tf

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "my-subnet-1"
  ip_cidr_range = var.subnets["subnet1"]
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "my-subnet-2"
  ip_cidr_range = var.subnets["subnet2"]
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
