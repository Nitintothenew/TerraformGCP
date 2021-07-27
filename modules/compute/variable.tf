variable "module_name" {
  type        = string
  description = "name of the compute instance"
  
}

variable "service_account_email" {
  default = "nitinfulltf@nypoc-318209.iam.gserviceaccount.com"
}

variable "project_name" {
  type    = string
  description = "project name"
  default   =   "nypoc-318209"
}

variable "project_tag" {
  type = string

}

variable "disk_size_gb" {
  description = "Boot disk size in GB"
  
}


variable "machine_type" {
  type        = string
  description = "Machine Type"
  default     = "e2-medium"
}

variable "zones" {
  type        = list

}

variable "countt" {
  type = number
  default = 1
  
}
variable "image" {
  type = string
  description = "image name"
  #default = "debian-cloud/debian-9"
  
}



variable "subnetname" {
  type = string
  description = "subnet name"
  
  
}