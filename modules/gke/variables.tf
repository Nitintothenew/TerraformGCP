######## Variables ###########

variable "project_name" {
  #default = "nypoc-318209"
}

# variable "service_account_email" {
#   default = "nitinfulltf@nypoc-318209.iam.gserviceaccount.com"
# }

# variable "zone" {
#   default = "us-central1-a"
  
# }


variable "region" {
  default = "us-central1"
}

variable "cluster_name" {
  default = "gke-pwc"
}

variable "cluster_zone" {
  
  default = "us-central1-b"
}

# variable "network"{
#   default = "gke-net-1"
# }

variable "node_pool_name" {
  default = "dev-pool"
  
}


variable "cluster_secondary_name"{
  default = "gke-pods-1"
}

variable "cluster_service_name"{
  default = "gke-services-1"
}



variable "cluster_secondary_range"{
  default = ""

} 

variable "cluster_service_range"{
  default = ""
}

variable "master_cidr"{
  default = "172.16.32.0/28"
}

#variable "k8s_version" {
#  default = "1.12"
#}

variable "initial_node_count" {
  default = 1
}

variable "node_count" {
  default = 1
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 2
}

variable "disk_size_gb" {
  default = 50
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "name" {
  description = "vpc self"
  default = ""
}

variable "subnetwork_self" {
  description = "subnetwork self"
  default = ""
}

variable "image_type" {
  default = "ubuntu"
  
}

######## Outputs ###########
###### Cluster endpoints ######
output "cluster_endpoint" {
  value = google_container_cluster.cluster.endpoint
}
