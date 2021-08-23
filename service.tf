# resource "google_project_service" "iam" {
#   project = var.project_name                                           
#   service   = "iam.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "cloudresource" {
#   project = var.project_name
#   service   = "cloudresourcemanager.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "compute" {
#   project = var.project_name
#   service   = "compute.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "sqladmin" {
#   project = var.project_name
#   service   = "sqladmin.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "network" {
#   project = var.project_name
#   service   = "networkmanagement.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "container" {
#   project = var.project_name
#   service   = "container.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "dns" {
#   project = var.project_name
#   service   = "dns.googleapis.com" 
#   disable_on_destroy = false
# }


# resource "google_project_service" "logging" {
#   project = var.project_name
#   service   = "logging.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "monitoring" {
#   project = var.project_name
#   service   = "monitoring.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "sql" {
#   project = var.project_name
#   service   = "sql-component.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "storage" {
#   project = var.project_name
#   service   = "storage-component.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "bucket" {
#   project = var.project_name
#   service   = "storage.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "registry" {
#   project = var.project_name
#   service   = "containerregistry.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "cred" {
#   project = var.project_name
#   service   = "iamcredentials.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "storageapi" {
#   project = var.project_name
#   service   = "storage-api.googleapis.com" 
#   disable_on_destroy = false
# }
# resource "google_project_service" "cloudapi" {
#   project = var.project_name
#   service   = "cloudapis.googleapis.com" 
#   disable_on_destroy = false
# }
