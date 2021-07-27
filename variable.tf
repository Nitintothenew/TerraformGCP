variable "app_project" {
  type        = string
  description = "name of project"
  default     = "nypoc-318209"
}

variable "gcp_auth_file" {
  type        = string
  description = "auth file location"
  default     = "/home/ttn/Downloads/nypoc-318209-7f6629302cbd.json"
}

variable "gcp_region_1" {
  type        = string
  description = "zone where machine will create"
  default     = "us-central"
}

variable "zones" {
  type   = list
  default = []
   
}

variable "project_tag" {
  

}
 
variable "hazelcast_machine_type" {
    
}
variable "hazelcast_image" {
  
}
variable "no_of_hazelcast_node" {
  
}

variable "hazelcast_disk_size_gb" {
  
}



variable "rabbitmq_machine_type" {

}
variable "rabbitmq_image" {
  
}
variable "no_of_rabbitmq_node" {
  
}
variable "rabbitmq_disk_size_gb" {
  
}



variable "infinispan_machine_type" {
}
variable "infinispan_image" {

}
variable "no_of_infinispan_node" {
  
}
variable "infinispan_disk_size_gb" {
  
}


variable "efk_machine_type" {
}
variable "efk_image" {

}
variable "no_of_efk_node" {
  
}
variable "efk_disk_size_gb" {
  
}


variable "monitoring_machine_type" {
}
variable "monitoring_image" {

}
variable "no_of_monitoring_node" {
  
}
variable "monitoring_disk_size_gb" {
  
}



variable "mongo_machine_type" {
}
variable "mongo_image" {

}
variable "no_of_mongo_node" {
  
}
variable "mongo_disk_size_gb" {
  
}