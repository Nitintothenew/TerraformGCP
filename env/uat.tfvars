zones = ["us-central1-a" , "us-central1-b" ] 

project_tag = "PWC-ASP2"


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

no_of_mongo_node = 1
mongo_machine_type = "e2-medium"
mongo_image = "debian-cloud/debian-9"   
mongo_disk_size_gb = 12