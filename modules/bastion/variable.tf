variable "name" {
  type        = string
  description = "name of the compute instance"
  default     = "bastion"
}

# variable "service_account_email" {
#   default = "nitinfulltf@nypoc-318209.iam.gserviceaccount.com"
# }

variable "project_name" {
  type    = string
  description = "project name"
 
}

variable "disk_size_gb" {
  description = "Boot disk size in GB"
  default     = 100
}


variable "machine_type" {
  type        = string
  description = "Machine Type"
  default     = "e2-medium"
}

variable "project_tag" {
  
}
variable "zone" {
  type        = string
  description = "zone where machine will create"
  default     = "us-central1-a"
}

variable "image" {
  type = string
  description = "image name"
  default = "centos-8"
  
}

variable "static_ip" {
  
}


variable "subnetname" {
  type = string
  description = "subnet name"
  
  
}

variable "ssh_user" {
  default = "ubuntu"
}


variable "key" {
  
}