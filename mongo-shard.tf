module "mongo_shard" {
    count = var.mongodb_cluster ? 1 : 0
    source = "./modules/compute"
    module_name = var.mongo_shard_module_name
    machine_type = var.mongo_shard_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.mongo_shard_image
    disk_size_gb = var.mongo_shard_disk_size_gb
    subnetname = module.vpc.subnetname    
    #countt = var.no_of_mongo_shard_node
    countt = length(var.mongo_shard_module_name)
    key = tls_private_key.ssh_key_mongo.public_key_openssh
    project_name = var.project_name

  
}

module "mongo_config" {
    count = var.mongodb_cluster ? 1 : 0
    source = "./modules/compute"
    module_name = var.mongo_config_module_name
    machine_type = var.mongo_config_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.mongo_config_image
    disk_size_gb = var.mongo_config_disk_size_gb
    subnetname = module.vpc.subnetname    
    #countt = var.no_of_mongo_config_node
    countt = length(var.mongo_config_module_name)
    key = tls_private_key.ssh_key_mongo.public_key_openssh
    project_name = var.project_name
}


module "mongo_single" {
    count = var.mongodb_cluster ? 0 : 1
    source = "./modules/compute"
    module_name = var.mongo_single_module_name
    machine_type = var.mongo_single_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.mongo_single_image
    disk_size_gb = var.mongo_single_disk_size_gb
    subnetname = module.vpc.subnetname    
    #countt = var.no_of_mongo_single_node
    countt = length(var.mongo_single_module_name)
    key = tls_private_key.ssh_key_mongo.public_key_openssh
    project_name = var.project_name  
}