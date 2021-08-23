### Creating jump-host / bastion-host  ###
resource "google_compute_instance" "vm" {
  name                  = "${var.project_name}-${terraform.workspace}-${element(var.module_name,count.index)}-vm"
  count = var.countt
  machine_type = var.machine_type
  zone         = var.zones[count.index % length(var.zones)]
  project = var.project_name
  tags  = ["private"]
  
  labels = {
    environment = "${terraform.workspace}"
    project = "${var.project_tag}"
    name    = "${var.project_tag}-${terraform.workspace}-${element(var.module_name,count.index)}-vm"
    managedby = "terraform"

  }
  
  # service_account {
  #   email = var.service_account_email
  #   scopes = ["cloud-platform"]

  # }

  boot_disk {
    initialize_params {
      image = var.image
      size = var.disk_size_gb
      
    }
  }
  
  network_interface {
     subnetwork = var.subnetname    

  }
   metadata = {
    ssh-keys        = "${var.ssh_user}:${var.key}"
      } 
}


