variable "vpc_id" {
  type = string
  description = "id of vpc"
  
  
}

variable "network_name" {

  
}

variable "self" {
  type = string
  description = "self"
  
}
variable "project_name" {
  type        = string
  description = "The project ID to manage the Cloud SQL resources"
  #efault = "nypoc-318209"
}

variable "db_instance_name" {
  type        = string
  description = "The name of the Cloud SQL resources"
 
}


// required
variable "database_version" {
  description = "The database version to use"
  type        = string
  default = "POSTGRES_10"
}

// required
variable "region" {
  type        = string
  description = "The region of the Cloud SQL resources"
  default     = "us-central1"
}



variable "zone" {
  type        = string
  description = "The zone for the master instance, it should be something like: `us-central1-a`, `us-east1-c`."
  default = "us-central1-c"
}

# variable "activation_policy" {
#   description = "The activation policy for the master instance.Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
#   type        = string
#   default     = "ALWAYS"
# }

variable "availability_type" {
  description = "The availability type for the master instance.This is only used to set up high availability for the PostgreSQL instance. Can be either `ZONAL` or `REGIONAL`."
  type        = string
  default     = "ZONAL"
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size."
  type        = bool
  default     = true
}

variable "project_tag" {
  
}


variable "disk_size" {
  description = "The disk size for the master instance."
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the master instance."
  type        = string
  default     = "PD_SSD"
}

variable "pricing_plan" {
  description = "The pricing plan for the master instance."
  type        = string
  default     = "PER_USE"
}

# variable "maintenance_window_day" {
#   description = "The day of week (1-7) for the master instance maintenance."
#   type        = number
#   default     = 1
# }

# variable "maintenance_window_hour" {
#   description = "The hour of day (0-23) maintenance window for the master instance maintenance."
#   type        = number
#   default     = 23
# }

# variable "maintenance_window_update_track" {
#   description = "The update track of maintenance window for the master instance maintenance.Can be either `canary` or `stable`."
#   type        = string
#   default     = "canary"
# }


# variable "backup_configuration" {
#   description = "The backup_configuration settings subblock for the database setings"
#   type = object({
#     enabled                        = bool
#     start_time                     = string
#     location                       = string
#     point_in_time_recovery_enabled = bool
#     transaction_log_retention_days = string
#     retained_backups               = number
#     retention_unit                 = string
#   })
#   default = {
#     enabled                        = false
#     start_time                     = null
#     location                       = null
#     point_in_time_recovery_enabled = false
#     transaction_log_retention_days = null
#     retained_backups               = null
#     retention_unit                 = null
#   }
# }

// Read Replicas
# variable "read_replicas" {
#   description = "List of read replicas to create"
#   type = list(object({
#     name            = string
#     tier            = string
#     zone            = string
#     disk_type       = string
#     disk_autoresize = bool
#     disk_size       = string
#     user_labels     = map(string)
#     database_flags = list(object({
#       name  = string
#       value = string
#     }))
#     ip_configuration = object({
#       authorized_networks = list(map(string))
#       ipv4_enabled        = bool
#       private_network     = string
#       require_ssl         = bool
#     })
#   }))
#   default = []
# }

# variable "read_replica_name_suffix" {
#   description = "The optional suffix to add to the read instance name"
#   type        = string
#   default     = ""
# }

variable "db_name" {
  description = "The name of the default database to create"
  type        = string
  default     = "pwc"
}


# variable "user_name" {
#   description = "The name of the default user"
#   type        = string
#   default     = "default"
# }

# variable "user_password" {
#   description = "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
#   type        = string
#   default     = ""
# }




variable "deletion_protection" {
  description = "Used to block Terraform from deleting a SQL Instance."
  type        = bool
  default     = false
}

# variable "read_replica_deletion_protection" {
#   description = "Used to block Terraform from deleting replica SQL Instances."
#   type        = bool
#   default     = false
# }

# variable "enable_default_db" {
#   description = "Enable or disable the creation of the default database"
#   type        = bool
#   default     = true
# }

# variable "enable_default_user" {
#   description = "Enable or disable the creation of the default user"
#   type        = bool
#   default     = true
# }

variable "db_password" {
  description = "Password for the pwc Postgres user"
  default     = ""
}