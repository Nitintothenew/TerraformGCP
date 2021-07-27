### Creating jump-host / bastion-host  ###
resource "google_compute_instance" "vm" {
  name         = "${var.project_name}-${terraform.workspace}-${var.module_name}-${count.index}"
  count = var.countt
  #name = nypoc-uat-hazelcast-0

  machine_type = var.machine_type
  zone         = var.zones[count.index % length(var.zones)]
  project = var.project_name
  tags  = ["private"]
  
  labels = {
    Environment = "${terraform.workspace}"
    Project = "${var.project_tag}"
    Name = "${var.project_tag}-${terraform.workspace}-${var.module_name}-${count.index}"
    ManagedBy = "Terraform"

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

  }
}


