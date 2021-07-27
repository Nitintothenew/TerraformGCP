variable "name" {
  type        = string
  description = "name of the compute instance"
  default     = "bastion"
}

variable "service_account_email" {
  default = "nitinfulltf@nypoc-318209.iam.gserviceaccount.com"
}

variable "project_name" {
  type    = string
  description = "project name"
  default   =   "nypoc-318209"
}

# variable "shielded_vm" {
#   type = bool
#   description = "Enable shielded VM on the bastion host (recommended)"
#   default     = true
# }

variable "disk_size_gb" {
  description = "Boot disk size in GB"
  default     = 100
}


variable "machine_type" {
  type        = string
  description = "Machine Type"
  default     = "e2-medium"
}

variable "zone" {
  type        = string
  description = "zone where machine will create"
  default     = "us-central1-a"
}

variable "image" {
  type = string
  description = "image name"
  default = "debian-cloud/debian-9"
  
}



variable "subnetname" {
  type = string
  description = "subnet name"
  
  
}