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

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_subnetworks"></a> [auto\_create\_subnetworks](#input\_auto\_create\_subnetworks) | When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources. | `bool` | `false` | no |
| <a name="input_cluster_secondary_name"></a> [cluster\_secondary\_name](#input\_cluster\_secondary\_name) | n/a | `string` | `"gke-pods-1"` | no |
| <a name="input_cluster_secondary_range"> </a> [cluster\_secondary\_range](#input\_cluster\_secondary\_range) | n/a | `string` | `"10.4.0.0/14"` | no |
| <a name="input_cluster_service_name"></a> [cluster\_service\_name](#input\_cluster\_service\_name) | n/a | `string` | `"gke-services-1"` | no |
| <a name="input_cluster_service_range"></a> [cluster\_service\_range](#input\_cluster\_service\_range) | n/a | `string` | `"10.0.32.0/20"` | no |
| <a name="input_name"></a> [name](#input\_name) | name of vpc | `string` | `"pwc"` | no |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | n/a | `string` | `"nitin"` | no |
| <a name="input_project-name"></a> [project-name](#input\_project-name) | name of project | `string` | `"nypoc-318209"` | no |
| <a name="input_region"></a> [region](#input\_region) | region of subnet | `string` | `"us-central1"` | no |
| <a name="input_subnet_ip_db"></a> [subnet\_ip\_db](#input\_subnet\_ip\_db) | cidr range for public subnet | `string` | `"10.0.10.0/24"` | no |
| <a name="input_subnet_ip_gke"></a> [subnet\_ip\_gke](#input\_subnet\_ip\_gke) | cidr range for public subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_subnet_ip_public"></a> [subnet\_ip\_public](#input\_subnet\_ip\_public) | cidr range for public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_subnetworkprivatedb"></a> [subnetworkprivatedb](#input\_subnetworkprivatedb) | name of privatesubnet db subnet | `string` | `"privatedbnew"` | no |
| <a name="input_subnetworkprivategke"></a> [subnetworkprivategke](#input\_subnetworkprivategke) | name of privatesubnet gke subnet | `string` | `"privategke"` | no |
| <a name="input_subnetworkpublic"></a> [subnetworkpublic](#input\_subnetworkpublic) | name of public subnet | `string` | `"publicnew"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_secondary_range"></a> [cluster\_secondary\_range](#output\_cluster\_secondary\_range) | n/a |
| <a name="output_cluster_service_range"></a> [cluster\_service\_range](#output\_cluster\_service\_range) | n/a |
| <a name="output_id"></a> [id](#output\_id) | value |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_subnetname"></a> [subnetname](#output\_subnetname) | value |
| <a name="output_subnetnamedb"></a> [subnetnamedb](#output\_subnetnamedb) | value |
| <a name="output_subnetnamegke"></a> [subnetnamegke](#output\_subnetnamegke) | value |
| <a name="output_subnetwork_self"></a> [subnetwork\_self](#output\_subnetwork\_self) | n/a |
| <a name="output_vpc_self"></a> [vpc\_self](#output\_vpc\_self) | n/a |







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

