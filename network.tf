resource "google_compute_network" "lbg-network" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name = "subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region = var.region
  network = google_compute_network.lbg-network.id
 
}