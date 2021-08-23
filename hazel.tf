module "hazelcast" {
    source = "./modules/compute"
    module_name = var.hazelcast_module_name
    machine_type = var.hazelcast_machine_type
    zones         = var.zones
    image = var.hazelcast_image
    disk_size_gb = var.hazelcast_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_hazelcast_node
    project_tag = var.project_tag
    key = tls_private_key.ssh_key_hazel.public_key_openssh  
    project_name = var.project_name
}

