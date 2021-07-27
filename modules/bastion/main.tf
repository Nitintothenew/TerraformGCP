### Creating jump-host / bastion-host  ###
resource "google_compute_instance" "bastion" {
  name         = "${var.project_name}-${terraform.workspace}-${var.name}"
  machine_type = var.machine_type
  zone         = var.zone
  project = var.project_name
  tags  = ["bastion"]
   labels = {
    environment = "dev"
  }
  service_account {
    email = var.service_account_email
    scopes = ["cloud-platform"]

  }

  boot_disk {
    initialize_params {
      image = var.image
      size = var.disk_size_gb
      
    }
  }
  network_interface {
     subnetwork = var.subnetname    
    access_config {
    }
  }
}


