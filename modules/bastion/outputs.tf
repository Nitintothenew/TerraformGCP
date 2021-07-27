output "instance_id" {
  description = "value"
  value = google_compute_instance.bastion.name
}

output "instance_ip" {
  description = "Public IP of Instance"
  value = google_compute_instance.bastion.network_interface.0.access_config.0.nat_ip 
  
}
output "Time-Date" {
  description = "Date/Time of Execution"
  value       = timestamp()
}

