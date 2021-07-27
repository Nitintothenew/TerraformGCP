module "vpc" {
  source = "./modules/vpc"
}
module "bastion" {
  source = "./modules/bastion"
  subnetname = module.vpc.subnetname
}














# module "gke" {
#   source = "./modules/gke"

#    cluster_secondary_range = module.vpc.cluster_secondary_range
#    cluster_service_range = module.vpc.cluster_service_range
#    name = module.vpc.vpc_self
#    subnetwork_self = module.vpc.subnetwork_self
  
# }

# module "cloudsql" {
#    source = "./modules/cloudsql"
#    network_name = module.vpc.name
#    vpc_id = module.vpc.id
#    self = module.vpc.vpc_self


   ##################subnetwork_self = module.vpc.subnetwork_self

#}

# module "mongo" {
  
#    source = "./modules/mongodb"
#    subnetname = module.vpc.subnetname


# }

# module "efk" {
#     source = "./modules/efk"
#     subnet = module.vpc.subnetname
#     machine_type_logging = var.machine_type_logging
#     no_of_logging = var.no_of_logging


# }

# module "rabbitmq" {
#    source = "./modules/rabbitmq"
#    subnet = module.vpc.subnetname


# }

# module "grafana" {
#     source = "./modules/grafana"
#     subnet = module.vpc.subnetname
#     machine_type_monitoring = var.machine_type_monitoring
#     no_of_monitoring = var.no_of_monitoring

# }

# module "hazelcast" {
#    source = "./modules/hazelcast"
#    subnet = module.vpc.subnetname

# }

# module "infinispan" {
#    source = "./modules/infinispan"
#    subnet = module.vpc.subnetname

# }