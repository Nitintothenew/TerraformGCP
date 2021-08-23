## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 3.79.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.1.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bastion"></a> [bastion](#module\_bastion) | ./modules/bastion | n/a |
| <a name="module_cloudsql"></a> [cloudsql](#module\_cloudsql) | ./modules/cloudsql | n/a |
| <a name="module_efk"></a> [efk](#module\_efk) | ./modules/compute | n/a |
| <a name="module_gke"></a> [gke](#module\_gke) | ./modules/gke | n/a |
| <a name="module_hazelcast"></a> [hazelcast](#module\_hazelcast) | ./modules/compute | n/a |
| <a name="module_infinispan"></a> [infinispan](#module\_infinispan) | ./modules/compute | n/a |
| <a name="module_mongo_config"></a> [mongo\_config](#module\_mongo\_config) | ./modules/compute | n/a |
| <a name="module_mongo_shard"></a> [mongo\_shard](#module\_mongo\_shard) | ./modules/compute | n/a |
| <a name="module_mongo_single"></a> [mongo\_single](#module\_mongo\_single) | ./modules/compute | n/a |
| <a name="module_monitoring"></a> [monitoring](#module\_monitoring) | ./modules/compute | n/a |
| <a name="module_rabbitmq"></a> [rabbitmq](#module\_rabbitmq) | ./modules/compute | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

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
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | n/a | `any` | n/a | yes |
| <a name="input_db_instance_name"></a> [db\_instance\_name](#input\_db\_instance\_name) | n/a | `any` | n/a | yes |
| <a name="input_efk_disk_size_gb"></a> [efk\_disk\_size\_gb](#input\_efk\_disk\_size\_gb) | n/a | `any` | n/a | yes |
| <a name="input_efk_image"></a> [efk\_image](#input\_efk\_image) | n/a | `any` | n/a | yes |
| <a name="input_efk_machine_type"></a> [efk\_machine\_type](#input\_efk\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_efk_module_name"></a> [efk\_module\_name](#input\_efk\_module\_name) | n/a | `list(string)` | <pre>[<br>  "efk"<br>]</pre> | no |
| <a name="input_gcp_auth_file"></a> [gcp\_auth\_file](#input\_gcp\_auth\_file) | auth file location | `string` | n/a | yes |
| <a name="input_gcp_region_1"></a> [gcp\_region\_1](#input\_gcp\_region\_1) | region where machine will create | `string` | n/a | yes |
| <a name="input_gcp_service_list"></a> [gcp\_service\_list](#input\_gcp\_service\_list) | The list of apis necessary for the project | `list(string)` | <pre>[<br>  "cloudresourcemanager.googleapis.com",<br>  "serviceusage.googleapis.com",<br>  "compute.googleapis.com",<br>  "sqladmin.googleapis.com",<br>  "networkmanagement.googleapis.com",<br>  "container.googleapis.com",<br>  "logging.googleapis.com",<br>  "monitoring.googleapis.com",<br>  "storage.googleapis.com",<br>  "cloudapis.googleapis.com",<br>  "servicenetworking.googleapis.com",<br>  "iam.googleapis.com"<br>]</pre> | no |
| <a name="input_hazelcast_disk_size_gb"></a> [hazelcast\_disk\_size\_gb](#input\_hazelcast\_disk\_size\_gb) | n/a | `any` | n/a | yes |
| <a name="input_hazelcast_image"></a> [hazelcast\_image](#input\_hazelcast\_image) | n/a | `any` | n/a | yes |
| <a name="input_hazelcast_machine_type"></a> [hazelcast\_machine\_type](#input\_hazelcast\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_hazelcast_module_name"></a> [hazelcast\_module\_name](#input\_hazelcast\_module\_name) | n/a | `list(string)` | <pre>[<br>  "hazelcast"<br>]</pre> | no |
| <a name="input_infinispan_disk_size_gb"></a> [infinispan\_disk\_size\_gb](#input\_infinispan\_disk\_size\_gb) | n/a | `any` | n/a | yes |
| <a name="input_infinispan_image"></a> [infinispan\_image](#input\_infinispan\_image) | n/a | `any` | n/a | yes |
| <a name="input_infinispan_machine_type"></a> [infinispan\_machine\_type](#input\_infinispan\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_infinispan_module_name"></a> [infinispan\_module\_name](#input\_infinispan\_module\_name) | n/a | `list(string)` | <pre>[<br>  "infinispan"<br>]</pre> | no |
| <a name="input_mongo_config_disk_size_gb"></a> [mongo\_config\_disk\_size\_gb](#input\_mongo\_config\_disk\_size\_gb) | } | `any` | n/a | yes |
| <a name="input_mongo_config_image"></a> [mongo\_config\_image](#input\_mongo\_config\_image) | n/a | `any` | n/a | yes |
| <a name="input_mongo_config_machine_type"></a> [mongo\_config\_machine\_type](#input\_mongo\_config\_machine\_type) | ############### for mongo-config ####### | `any` | n/a | yes |
| <a name="input_mongo_config_module_name"></a> [mongo\_config\_module\_name](#input\_mongo\_config\_module\_name) | n/a | `list(string)` | <pre>[<br>  "mongo-config-1"<br>]</pre> | no |
| <a name="input_mongo_shard_disk_size_gb"></a> [mongo\_shard\_disk\_size\_gb](#input\_mongo\_shard\_disk\_size\_gb) | } | `any` | n/a | yes |
| <a name="input_mongo_shard_image"></a> [mongo\_shard\_image](#input\_mongo\_shard\_image) | n/a | `any` | n/a | yes |
| <a name="input_mongo_shard_machine_type"></a> [mongo\_shard\_machine\_type](#input\_mongo\_shard\_machine\_type) | ######## for mongo ############ | `any` | n/a | yes |
| <a name="input_mongo_shard_module_name"></a> [mongo\_shard\_module\_name](#input\_mongo\_shard\_module\_name) | n/a | `list(string)` | <pre>[<br>  "mongo-shard1-node1"<br>]</pre> | no |
| <a name="input_mongo_single_disk_size_gb"></a> [mongo\_single\_disk\_size\_gb](#input\_mongo\_single\_disk\_size\_gb) | } | `any` | n/a | yes |
| <a name="input_mongo_single_image"></a> [mongo\_single\_image](#input\_mongo\_single\_image) | n/a | `any` | n/a | yes |
| <a name="input_mongo_single_machine_type"></a> [mongo\_single\_machine\_type](#input\_mongo\_single\_machine\_type) | ############### for mongos ####### | `any` | n/a | yes |
| <a name="input_mongo_single_module_name"></a> [mongo\_single\_module\_name](#input\_mongo\_single\_module\_name) | n/a | `list(string)` | <pre>[<br>  "node1",<br>  "node2",<br>  "node3"<br>]</pre> | no |
| <a name="input_mongodb_cluster"></a> [mongodb\_cluster](#input\_mongodb\_cluster) | n/a | `bool` | n/a | yes |
| <a name="input_monitoring_disk_size_gb"></a> [monitoring\_disk\_size\_gb](#input\_monitoring\_disk\_size\_gb) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_image"></a> [monitoring\_image](#input\_monitoring\_image) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_machine_type"></a> [monitoring\_machine\_type](#input\_monitoring\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_monitoring_module_name"></a> [monitoring\_module\_name](#input\_monitoring\_module\_name) | n/a | `list(string)` | <pre>[<br>  "monitoring"<br>]</pre> | no |
| <a name="input_no_of_efk_node"></a> [no\_of\_efk\_node](#input\_no\_of\_efk\_node) | n/a | `any` | n/a | yes |
| <a name="input_no_of_hazelcast_node"></a> [no\_of\_hazelcast\_node](#input\_no\_of\_hazelcast\_node) | n/a | `any` | n/a | yes |
| <a name="input_no_of_infinispan_node"></a> [no\_of\_infinispan\_node](#input\_no\_of\_infinispan\_node) | n/a | `any` | n/a | yes |
| <a name="input_no_of_monitoring_node"></a> [no\_of\_monitoring\_node](#input\_no\_of\_monitoring\_node) | n/a | `any` | n/a | yes |
| <a name="input_no_of_rabbitmq_node"></a> [no\_of\_rabbitmq\_node](#input\_no\_of\_rabbitmq\_node) | n/a | `any` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | name of project | `string` | n/a | yes |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | n/a | `any` | n/a | yes |
| <a name="input_rabbitmq_disk_size_gb"></a> [rabbitmq\_disk\_size\_gb](#input\_rabbitmq\_disk\_size\_gb) | n/a | `any` | n/a | yes |
| <a name="input_rabbitmq_image"></a> [rabbitmq\_image](#input\_rabbitmq\_image) | n/a | `any` | n/a | yes |
| <a name="input_rabbitmq_machine_type"></a> [rabbitmq\_machine\_type](#input\_rabbitmq\_machine\_type) | n/a | `any` | n/a | yes |
| <a name="input_rabbitmq_module_name"></a> [rabbitmq\_module\_name](#input\_rabbitmq\_module\_name) | n/a | `list(string)` | <pre>[<br>  "rabbitmq"<br>]</pre> | no |
| <a name="input_zones"></a> [zones](#input\_zones) | n/a | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_IP"></a> [bastion\_IP](#output\_bastion\_IP) | Public IP of bastion host |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | vpc  id |
