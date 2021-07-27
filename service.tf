resource "google_project_service" "iam" {
  project = var.app_project                                           
  service   = "iam.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "cloudresource" {
  project = var.app_project
  service   = "cloudresourcemanager.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "compute" {
  project = var.app_project
  service   = "compute.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "sqladmin" {
  project = var.app_project
  service   = "sqladmin.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "network" {
  project = var.app_project
  service   = "networkmanagement.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "container" {
  project = var.app_project
  service   = "container.googleapis.com" 
  disable_on_destroy = false
}
# resource "google_project_service" "privateca" {
#   project = "privateca.googleapis.com"
#   service   = "iam.googleapis.com" 
#   disable_on_destroy = false
# }
resource "google_project_service" "dns" {
  project = var.app_project
  service   = "dns.googleapis.com" 
  disable_on_destroy = false
}
# resource "google_project_service" "service" {
#   project = "servicenetworking.googleapis.com"
#   service   = "iam.googleapis.com" 
#   disable_on_destroy = false
# }
resource "google_project_service" "resource" {
  project = var.app_project
  service   = "cloudresourcemanager.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "logging" {
  project = var.app_project
  service   = "logging.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "monitoring" {
  project = var.app_project
  service   = "monitoring.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "sql" {
  project = var.app_project
  service   = "sql-component.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "storage" {
  project = var.app_project
  service   = "storage-component.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "bucket" {
  project = var.app_project
  service   = "storage.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "registry" {
  project = var.app_project
  service   = "containerregistry.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "cred" {
  project = var.app_project
  service   = "iamcredentials.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "storageapi" {
  project = var.app_project
  service   = "storage-api.googleapis.com" 
  disable_on_destroy = false
}
resource "google_project_service" "cloudapi" {
  project = var.app_project
  service   = "cloudapis.googleapis.com" 
  disable_on_destroy = false
}
