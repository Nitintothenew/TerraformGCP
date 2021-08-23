resource "google_project_service" "gcp_services" {
  for_each = toset(var.gcp_service_list)
  project = var.project_name
  service = each.key
  disable_dependent_services=true
  disable_on_destroy = false
}


resource "tls_private_key" "ssh_key_bastion" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_mongo" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_rabbit" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}
resource "tls_private_key" "ssh_key_hazel" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_infinispan" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_efk" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_monitoring" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

resource "tls_private_key" "ssh_key_k8s" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}



module "vpc" {
  source = "./modules/vpc"
  null_var = values(google_project_service.gcp_services)[*].id
  project_name = var.project_name
}

module "bastion" {
  source = "./modules/bastion"
  subnetname = module.vpc.subnetname
  static_ip =  module.vpc.nat_ip
  key = tls_private_key.ssh_key_bastion.public_key_openssh
  project_name = var.project_name
  project_tag = var.project_tag
}

module "gke" {
  source = "./modules/gke"

   cluster_secondary_range = module.vpc.cluster_secondary_range
   cluster_service_range = module.vpc.cluster_service_range
   name = module.vpc.vpc_self
   subnetwork_self = module.vpc.subnetwork_self
   project_name = var.project_name
}


module "cloudsql" {
   source = "./modules/cloudsql"
   network_name = module.vpc.name
   vpc_id = module.vpc.id
   self = module.vpc.vpc_self
   project_name = var.project_name
   project_tag = var.project_tag
   db_instance_name = var.db_instance_name
   database_version = var.database_version


}
