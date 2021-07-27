module "efk" {
    source = "./modules/compute"
    module_name = "efk"
    machine_type = var.efk_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.efk_image
    disk_size_gb = var.efk_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_efk_node
  
}

