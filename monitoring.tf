module "monitoring" {
    source = "./modules/compute"
    module_name = var.monitoring_module_name
    machine_type = var.monitoring_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.monitoring_image
    disk_size_gb = var.monitoring_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_monitoring_node
    key = tls_private_key.ssh_key_monitoring.public_key_openssh
    project_name = var.project_name
  
}

