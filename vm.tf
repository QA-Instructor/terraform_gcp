resource "google_compute_instance" "lbg-network" {
  machine_type = "e2-medium"
  count = var.vm_count
  name = "${var.vm_name}-${count.index + 1}"
  tags =  google_compute_firewall.lbg-firewall.target_tags

  boot_disk {
    initialize_params {
      image  = "cos-cloud/cos-stable"
      size = var.disk_size
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.id
      access_config {
        network_tier = "STANDARD"
      }
  }
}