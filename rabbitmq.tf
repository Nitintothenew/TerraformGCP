module "rabbitmq" {
    source = "./modules/compute"
    module_name = var.rabbitmq_module_name
    machine_type = var.rabbitmq_machine_type
    zones         = var.zones
    project_tag = var.project_tag
    image = var.rabbitmq_image
    disk_size_gb = var.rabbitmq_disk_size_gb
    subnetname = module.vpc.subnetname    
    countt = var.no_of_rabbitmq_node
    key = tls_private_key.ssh_key_rabbit.public_key_openssh 
    project_name = var.project_name
}

