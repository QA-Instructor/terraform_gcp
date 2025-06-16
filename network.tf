resource "google_compute_network" "lbg-network" {
  name                    = var.network_name
  auto_create_subnetworks = "true"
}