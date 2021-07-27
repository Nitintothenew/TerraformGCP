# # setup the GCP provider | provider.tf


# terraform {
#   backend "gcs" {
#     bucket  = "mytf-state-prod"
#     prefix  = "terraform/state"
#   }
# }

#  provider "google" {
#    project = "nypoc-318209"
#    credentials = file("/home/ttn/Downloads/nypoc-318209-7f6629302cbd.json")
#    region  = "us-central1"
# }
