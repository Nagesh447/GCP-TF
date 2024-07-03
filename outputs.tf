# outputs.tf

output "vpc_network_name" {
  description = "The name of the VPC network."
  value       = google_compute_network.vpc_network.name
}

output "subnet_names" {
  description = "The names of the subnets."
  value       = [
    google_compute_subnetwork.subnet1.name,
    google_compute_subnetwork.subnet2.name
  ]
}
