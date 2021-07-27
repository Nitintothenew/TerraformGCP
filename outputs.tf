output "vpc_id" {
  description = "vpc  id "
  value = module.vpc.id
}

output "bastion_IP" {
  description = "Public IP of bastion host"
  value = module.bastion.instance_ip
}

# output "generated_user_password" {
#   description = "The auto generated default user password if not input password was provided"
#   value       = module.cloudsql.generated_user_password
#   sensitive   = true
# }


