## Terraform-PWC-GCP

This module creates a reslient and fault tolerant GCP Infrastructure using Terraform.

## Usage
## Step 1: Clone the repo
## Step 2: Then perform the following commands on the root folder:

- `terraform init` to get the plugins
- `terraform plan --var-file="env/uat.tfvars"` to see the infrastructure plan
- `terraform apply --var-file="env/uat.tfvars"` to apply the infrastructure build
- `terraform destroy --var-file="env/uat.tfvars"` to destroy the built infrastructure

## Providers
| Name | Version |
|------|---------|
| provider_google  | 3.79.0 |

## Modules
| Name | Source | Purpose |
|------|--------|---------|
| Bastion  | ./modules/bastion | For Creating Bastion host |
| Cloudsql | ./modules/cloudsql | For Creating CloudSQL for PostgreSQL database |
| VPC  | ./modules/vpc | For Creating Virtual Private Network  |
| Compute| ./modules/compute | For Creating Compute Instance for Other services |
| GKE  | ./modules/gke | For Creating Private Kubernetes Cluster for deployment of application  |

## Resources

| Name | Type |
|------|------|
| [google_project_service.gcp_services](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [local_file.pem_key_file_bastion](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_efk](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_hazel](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_infinispan](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_k8s](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_mongo](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_monitoring](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.pem_key_file_rabbit](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.ssh_key_bastion](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_efk](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_hazel](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_infinispan](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_k8s](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_mongo](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_monitoring](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.ssh_key_rabbit](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| database_version | Version of your postgresql database | `string` | n/a | yes |
| db_instance_name | Database instance name | `string` | n/a | yes |
| efk_disk_size_gb | Logging server disk size | `string` | n/a | yes |
| efk_machine_type | Logging server Machine type | `string` | n/a | yes |
| efk_module_name | n/a | `list(string)` | [ "efk"] | no |
| gcp_auth_file | auth file location | `string` | n/a | yes |
| gcp_region_1 | region where machine will create | `string` | n/a | yes |
| gcp_service_list | The list of apis necessary for this project | `list(string)` |   ["cloudresourcemanager.googleapis.com",  "serviceusage.googleapis.com",  "compute.googleapis.com",  "sqladmin.googleapis.com",  "networkmanagement.googleapis.com",  "container.googleapis.com",  "logging.googleapis.com",  "monitoring.googleapis.com",  "storage.googleapis.com",  "cloudapis.googleapis.com",  "servicenetworking.googleapis.com",  "iam.googleapis.com"] | no |
| hazelcast_disk_size_gb | n/a | `any` | n/a | yes |
| hazelcast_image  | n/a | `any` | n/a | yes |
| hazelcast_machine_type | n/a | `any` | n/a | yes |
| hazelcast_module_name | `list(string)` | [  "hazelcast"] | no |
| infinispan_disk_size_gb | n/a | `any` | n/a | yes |
| infinispan_image | n/a | `any` | n/a | yes |
| infinispan_machine_type  | `string` | n/a | yes |
| infinispan_module_name  | `list(string)` | [  "infinispan"] | no |
| mongo_config_disk_size_gb  | `string` | n/a | yes |
| mongo_config_image  | n/a | `string` | n/a | yes |
| mongo_config_machine_type  | n/a | `any` | n/a | yes |
| mongo_config_module_name  | n/a | `list(string)` | [  "mongo-config-1"] | no |
| mongo_shard_disk_size_gb  | `any` | n/a | yes |
| mongo_shard_image  | n/a | `any` | n/a | yes |
| mongo_shard_machine_type  | n/a | `any` | n/a | yes |
| mongo_shard_module_name | n/a | `list(string)` | [  "mongo-shard1-node1"] | no |
| mongo_single_disk_size_gb  | `any` | n/a | yes |
| mongo_single_image  | n/a | `any` | n/a | yes |
| mongo_single_machine_type | n/a | `any` | n/a | yes |
| mongo_single_module_name  | n/a | `list(string)` | [  "node1",  "node2",  "node3"] | no |
| mongodb_cluster | n/a | `bool` | n/a | yes |
| monitoring_disk_size_gb | n/a | `any` | n/a | yes |
| monitoring_image | n/a | `any` | n/a | yes |
| monitoring_machine_type  | n/a | `any` | n/a | yes |
| monitoring_module_name  | n/a | `list(string)` | [  "monitoring"] | no |
| no_of_efk_node | n/a | `any` | n/a | yes |
| no_of_hazelcast_node  | n/a | `any` | n/a | yes |
| no_of_infinispan_node  | n/a | `any` | n/a | yes |
| no_of_monitoring_node  | n/a | `any` | n/a | yes |
| no_of_rabbitmq_node  | n/a | `any` | n/a | yes |
| project_name  | name of project | `string` | n/a | yes |
| project_tag  | n/a | `any` | n/a | yes |
| rabbitmq_disk_size_gb  | n/a | `any` | n/a | yes |
| rabbitmq_image  | n/a | `any` | n/a | yes |
| rabbitmq_machine_type  | n/a | `any` | n/a | yes |
| rabbitmq_module_name | n/a | `list(string)` | [  "rabbitmq"] | no |
| zones | n/a | `list` | `[]` | no |


## Outputs

| Name | Description |
|------|-------------|
| vpc_id| VPC ID |
| bastion_IP | Public IP of bastion host |

## Requirements

Before this module can be used on a project, you must ensure that the following pre-requisites are fulfilled:

1. Terraform is [installed](#software-dependencies) on the machine where Terraform is executed.
2. The Service Account you execute the module with has the right [permissions](#configure-a-service-account).

The [project factory](https://github.com/terraform-google-modules/terraform-google-project-factory) can be used to provision projects with the correct APIs active.

### Software Dependencies
### Terraform
- [Terraform](https://www.terraform.io/downloads.html) 1.0.x
- [terraform-provider-google](https://github.com/terraform-providers/terraform-provider-google) plugin v3.79.0

### Configure a Service Account
In order to execute this module you must have a Service Account with the
following project roles:
- roles/owner

## Install

### Terraform
Be sure you have the correct Terraform version (1.0.x), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

## File structure
The project has the following folders and files:

- /: Root folder
- env:  For storing <env>.tfvars file
- /main.tf: Main file for this module, contains all the resources to create
- /variables.tf: All the variables for the module
- /output.tf: The outputs of the module
- /README.md: This file
- /modules: Modules that are called from main.tf
- /rabbitmq.tf: For Rabbitmq
- /hazel.tf: For Hazelcast 
- /infinispan.tf: For Infinispan
- /mongo-shard.tf: For MongoDB
- /monitoring.tf: For Monitoring
- /efk.tf: For Logging       
