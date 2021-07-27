module "monitoring" {
    source = "./modules/compute"
    module_name = "monitoring"
    machine_type = var.monitoring_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.monitoring_image
    disk_size_gb = var.monitoring_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_monitoring_node
  
}

