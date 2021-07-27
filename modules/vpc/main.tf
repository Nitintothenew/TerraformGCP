###### Creating custom VPC network ######
resource "google_compute_network" "vpc_network" {
  name = "${terraform.workspace}-${var.name}"
  auto_create_subnetworks = var.auto_create_subnetworks
  project = var.project-name
  routing_mode = "GLOBAL"

  
  timeouts {
    create = "60m"
    delete = "2h"
  }
  
}

###### Creating custom subnet public######
resource "google_compute_subnetwork" "Public" {
    name            =  "${terraform.workspace}-${var.subnetworkpublic}"
    ip_cidr_range   =  var.subnet_ip_public
    region          =  var.region
    network         =  google_compute_network.vpc_network.name
    project         =  var.project-name
    private_ip_google_access = true
   
    depends_on = [google_compute_network.vpc_network]


}  

###### Creating firewall for Jump-host / bastion-host ######
module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.project-name
  network_name = google_compute_network.vpc_network.name

  rules = [{
    name                    = "${terraform.workspace}-allow-ssh-ingress"
    description             = null
    direction               = "INGRESS"
    priority                = null
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = null
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["22"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }]


}


###### Creating custom subnet private database######
resource "google_compute_subnetwork" "PrivateDB" {
    name = "${terraform.workspace}-${var.subnetworkprivatedb}"  
    ip_cidr_range = var.subnet_ip_db
    region = var.region
    network     = google_compute_network.vpc_network.name
    project     = var.project-name
    private_ip_google_access = true
   
    depends_on = [google_compute_network.vpc_network]


}  

###### Creating custom subnet GKE######
resource "google_compute_subnetwork" "PrivateGKE" {
    name = "${terraform.workspace}-${var.subnetworkprivategke}"  
    ip_cidr_range = var.subnet_ip_gke
    region = var.region
    network     = google_compute_network.vpc_network.name
    project     = var.project-name
    private_ip_google_access = true
   
      secondary_ip_range = [
    {
      range_name    = var.cluster_secondary_name
      ip_cidr_range = var.cluster_secondary_range
    },
    {
      range_name    = var.cluster_service_name
      ip_cidr_range = var.cluster_service_range
    }
  ] 
    depends_on = [google_compute_network.vpc_network]



}  






