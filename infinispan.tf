module "infinispan" {
    source = "./modules/compute"
    module_name = "infinispan"
    machine_type = var.infinispan_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.infinispan_image
    disk_size_gb = var.infinispan_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_infinispan_node
  
}

