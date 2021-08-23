output "vpc_id" {
  description = "vpc  id "
  value = module.vpc.id
}

output "bastion_IP" {
  description = "Public IP of bastion host"
  value = module.bastion.instance_ip
}


resource "local_file" "pem_key_file_bastion" {
  content         = "${tls_private_key.ssh_key_bastion.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-bastion.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_mongo" {
  content         = "${tls_private_key.ssh_key_mongo.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-mongo.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_rabbit" {
  content         = "${tls_private_key.ssh_key_rabbit.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-rabbit.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_hazel" {
  content         = "${tls_private_key.ssh_key_hazel.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-hazel.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_infinispan" {
  content         = "${tls_private_key.ssh_key_infinispan.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-infinispan.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_efk" {
  content         = "${tls_private_key.ssh_key_efk.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-efk.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_monitoring" {
  content         = "${tls_private_key.ssh_key_monitoring.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-monitoring.pem")}"
  file_permission = "0400"
}
resource "local_file" "pem_key_file_k8s" {
  content         = "${tls_private_key.ssh_key_k8s.private_key_pem}"
  filename        = "${pathexpand("~/pems/pwc-asp2-gcp-${terraform.workspace}-k8s.pem")}"
  file_permission = "0400"
}