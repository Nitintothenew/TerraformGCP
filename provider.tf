# setup the GCP provider | provider.tf

 #terraform {
  #backend "gcs" {
   # bucket  = "mytf-state-prod"
  #  prefix  = "terraform/state"
 # }
#}

provider "google" {
  project = var.app_project
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
}
