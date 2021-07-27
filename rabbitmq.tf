module "rabbitmq" {
    source = "./modules/compute"
    module_name = "rabbitmq"
    machine_type = var.rabbitmq_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.rabbitmq_image
    disk_size_gb = var.rabbitmq_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_rabbitmq_node
  
}

