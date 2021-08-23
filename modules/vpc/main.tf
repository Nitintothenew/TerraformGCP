###### Creating custom VPC network ######
resource "google_compute_network" "vpc_network" {
  name = "${terraform.workspace}-${var.name}"
  auto_create_subnetworks = var.auto_create_subnetworks
  project = var.project_name
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
    project         =  var.project_name
    private_ip_google_access = true
   
    depends_on = [google_compute_network.vpc_network]
    

}  

###### Creating firewall for Jump-host / bastion-host ######
module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.project_name
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
    project     = var.project_name
    private_ip_google_access = true
   
    depends_on = [google_compute_network.vpc_network]


}  

###### Creating custom subnet GKE######
resource "google_compute_subnetwork" "PrivateGKE" {
    name = "${terraform.workspace}-${var.subnetworkprivategke}"  
    ip_cidr_range = var.subnet_ip_gke
    region = var.region
    network     = google_compute_network.vpc_network.name
    project     = var.project_name
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


###### External NAT IP (to be used by cloud-router for nodes-to-internet communication ######
resource "google_compute_address" "nat" {
  name    = var.nat_name
  project = var.project_name
  region  = var.region
}

###### Create a cloud router (to be use by the Cloud NAT) ######
resource "google_compute_router" "router" {
  name    =  var.nat_name
  project = var.project_name
  region  = var.region
  network = google_compute_network.vpc_network.self_link
}

###### Create a cloud NAT (Using cloud-router and NAT IP) ######
resource "google_compute_router_nat" "nat" {
  name    = format("%s-cloud-nat", var.nat_name)
  project = var.project_name
  router  = google_compute_router.router.name
  region  = var.region
  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = [google_compute_address.nat.self_link]
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  # subnetwork {
  #   name                    =  google_compute_subnetwork.PrivateGKE.self_link 

  #   source_ip_ranges_to_nat = ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"]

  #   secondary_ip_range_names = [
  #     google_compute_subnetwork.PrivateGKE.secondary_ip_range.0.range_name,
  #     google_compute_subnetwork.PrivateGKE.secondary_ip_range.1.range_name,
  #   ]

  # }

}


#Externam IP for bastion host
resource "google_compute_address" "static" {
  name = "ipv4-address"
  project = var.project_name
  region  = var.region
}


