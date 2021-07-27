module "mongo" {
    source = "./modules/compute"
    module_name = "mongo"
    machine_type = var.mongo_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.mongo_image
    disk_size_gb = var.mongo_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_mongo_node
  
}

