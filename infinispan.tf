module "infinispan" {
    source = "./modules/compute"
    module_name =  var.infinispan_module_name
    machine_type = var.infinispan_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.infinispan_image
    disk_size_gb = var.infinispan_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_infinispan_node
    key = tls_private_key.ssh_key_infinispan.public_key_openssh  
    project_name = var.project_name
}

