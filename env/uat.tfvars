zones = ["us-central1-a" , "us-central1-b", "us-central1-c" ] 

project_tag = "poc"


#path of  cred file
gcp_auth_file = "~/terraform-322005-c3933c9994fd.json"

gcp_region_1 = "us-central"



project_name = "terraform-322005"

db_instance_name = "nitin"
database_version = "POSTGRES_10"






no_of_hazelcast_node = 1
hazelcast_machine_type = "e2-medium"
hazelcast_image = "debian-cloud/debian-9"   
hazelcast_disk_size_gb = 12

no_of_rabbitmq_node = 3
rabbitmq_machine_type = "e2-medium"
rabbitmq_image = "debian-cloud/debian-9"   
rabbitmq_disk_size_gb = 12

no_of_infinispan_node = 1
infinispan_machine_type = "e2-medium"
infinispan_image = "debian-cloud/debian-9"   
infinispan_disk_size_gb = 12

no_of_efk_node = 1
efk_machine_type = "e2-medium"
efk_image = "debian-cloud/debian-9"   
efk_disk_size_gb = 12

no_of_monitoring_node = 1
monitoring_machine_type = "e2-medium"
monitoring_image = "debian-cloud/debian-9"   
monitoring_disk_size_gb = 12

#no_of_mongo_shard_node  depends on the length of mongo_shard_module_name
mongo_shard_machine_type = "e2-medium"
mongo_shard_image = "debian-cloud/debian-9"   
mongo_shard_disk_size_gb = 12


#no_of_mongo_single_node depends on the length of mongo_single_module_name
mongo_single_machine_type = "e2-medium"
mongo_single_image = "debian-cloud/debian-9"   
mongo_single_disk_size_gb = 12


#no_of_mongo_config_node  depends on the length of  mongo_config_module_name
mongo_config_machine_type = "e2-medium"
mongo_config_image = "debian-cloud/debian-9"   
mongo_config_disk_size_gb = 12




###If "true" then sharded  cluster will create else single client cluster will create
mongodb_cluster =  true  
  


