variable "project_name" {
  type        = string
  description = "name of project"

}

variable "gcp_auth_file" {
  type        = string
  description = "auth file location"

}

variable "gcp_region_1" {
  type        = string
  description = "region where machine will create"
}

variable "zones" {
  type   = list
  default = []
   
}

variable "project_tag" {
  

}

variable "db_instance_name" {

}

variable "database_version" {
  
}
 
variable "hazelcast_machine_type" {
    
}
variable "hazelcast_image" {
  
}
variable "no_of_hazelcast_node" {
  
}

variable "hazelcast_disk_size_gb" {
  
}

variable "hazelcast_module_name" {
   type = list(string)

  default = ["hazelcast"]
}


variable "rabbitmq_machine_type" {

}
variable "rabbitmq_image" {
  
}
variable "no_of_rabbitmq_node" {
  
}
variable "rabbitmq_disk_size_gb" {
  
}
variable "rabbitmq_module_name" {
  type = list(string)

  default = ["rabbitmq"]

}


variable "infinispan_machine_type" {
}
variable "infinispan_image" {

}
variable "no_of_infinispan_node" {
  
}
variable "infinispan_disk_size_gb" {
  
}
variable "infinispan_module_name" {
  type = list(string)

  default = ["infinispan"]

}


variable "efk_machine_type" {
}
variable "efk_image" {

}
variable "no_of_efk_node" {
  
}
variable "efk_disk_size_gb" {
  
}
variable "efk_module_name" {
  type = list(string)

  default = ["efk"]

}


variable "monitoring_machine_type" {
}
variable "monitoring_image" {

}
variable "no_of_monitoring_node" {
  
}
variable "monitoring_disk_size_gb" {
  
}

variable "monitoring_module_name" {
  type = list(string)

  default = ["monitoring"]

}

######### for mongo ############
variable "mongo_shard_machine_type" {
}
variable "mongo_shard_image" {

}
# variable "no_of_mongo_shard_node" {
  
# }
variable "mongo_shard_disk_size_gb" {
  
}
variable "mongo_shard_module_name" {
   type = list(string)

  default = ["mongo-shard1-node1"] #,"mongo-shard1-node2","mongo-shard1-node3","mongo-shard2-node1","mongo-shard2-node2","mongo-shard3-node3","mongo-shard3-node2","mongo-shard3-node3"]
}


# ############### for mongos #######
variable "mongo_single_machine_type" {
}
variable "mongo_single_image" {

}
# variable "no_of_mongo_single_node" {
  
# }
variable "mongo_single_disk_size_gb" {
  
}
variable "mongo_single_module_name" {
  type = list(string)
  default = ["node1","node2","node3"]
}

# ############### for mongo-config #######
variable "mongo_config_machine_type" {
}
variable "mongo_config_image" {

}
# variable "no_of_mongo_config_node" {
  
# }
variable "mongo_config_disk_size_gb" {
  
}
variable "mongo_config_module_name" {
  type = list(string)
  default = ["mongo-config-1"] #,"mongo-config-2","mongo-config-3"]
}



variable "mongodb_cluster" {            ###for sharded or single cluster
  type = bool
  
}


variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    
    "cloudresourcemanager.googleapis.com", 
    "serviceusage.googleapis.com",
    "compute.googleapis.com",
    "sqladmin.googleapis.com",
    "networkmanagement.googleapis.com",
     "container.googleapis.com",
     "logging.googleapis.com",
     "monitoring.googleapis.com",
     "storage.googleapis.com",    
     "cloudapis.googleapis.com" ,
     "servicenetworking.googleapis.com",
     "iam.googleapis.com"

  ]
}


