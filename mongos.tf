# module "mongos" {
#     source = "./modules/compute"
#     module_name = var.mongos_module_name
#     machine_type = var.mongos_machine_type
#     zones         = var.zones
#     project_tag = var.project_tag
#     image = var.mongos_image
#     disk_size_gb = var.mongos_disk_size_gb
#     subnetname = module.vpc.subnetname    
#     countt = var.no_of_mongos_node
  
# }

