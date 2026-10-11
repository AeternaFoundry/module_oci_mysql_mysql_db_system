output "mysql_mysql_db_systems_id" {
  description = "Map of id values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no id are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_mysql_db_systems_access_mode" {
  description = "Map of access_mode values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no access_mode are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.access_mode if v.access_mode != null && length(v.access_mode) > 0 }
}
output "mysql_mysql_db_systems_admin_password" {
  description = "Map of admin_password values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no admin_password are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.admin_password if v.admin_password != null && length(v.admin_password) > 0 }
  sensitive   = true
}
output "mysql_mysql_db_systems_admin_username" {
  description = "Map of admin_username values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no admin_username are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.admin_username if v.admin_username != null && length(v.admin_username) > 0 }
}
output "mysql_mysql_db_systems_availability_domain" {
  description = "Map of availability_domain values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no availability_domain are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "mysql_mysql_db_systems_backup_policy" {
  description = "Map of backup_policy values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no backup_policy are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.backup_policy) if v.backup_policy != null && length(v.backup_policy) > 0 }
}
output "mysql_mysql_db_systems_channels" {
  description = "Map of channels values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no channels are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.channels if v.channels != null && length(v.channels) > 0 }
}
output "mysql_mysql_db_systems_compartment_id" {
  description = "Map of compartment_id values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no compartment_id are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_mysql_db_systems_configuration_id" {
  description = "Map of configuration_id values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no configuration_id are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.configuration_id if v.configuration_id != null && length(v.configuration_id) > 0 }
}
output "mysql_mysql_db_systems_crash_recovery" {
  description = "Map of crash_recovery values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no crash_recovery are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.crash_recovery if v.crash_recovery != null && length(v.crash_recovery) > 0 }
}
output "mysql_mysql_db_systems_current_placement" {
  description = "Map of current_placement values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no current_placement are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.current_placement if v.current_placement != null && length(v.current_placement) > 0 }
}
output "mysql_mysql_db_systems_customer_contacts" {
  description = "Map of customer_contacts values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no customer_contacts are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.customer_contacts if v.customer_contacts != null && length(v.customer_contacts) > 0 }
}
output "mysql_mysql_db_systems_data_storage" {
  description = "Map of data_storage values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no data_storage are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.data_storage) if v.data_storage != null && length(v.data_storage) > 0 }
}
output "mysql_mysql_db_systems_data_storage_size_in_gb" {
  description = "Map of data_storage_size_in_gb values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no data_storage_size_in_gb are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.data_storage_size_in_gb if v.data_storage_size_in_gb != null }
}
output "mysql_mysql_db_systems_database_console" {
  description = "Map of database_console values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no database_console are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.database_console) if v.database_console != null && length(v.database_console) > 0 }
}
output "mysql_mysql_db_systems_database_management" {
  description = "Map of database_management values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no database_management are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.database_management if v.database_management != null && length(v.database_management) > 0 }
}
output "mysql_mysql_db_systems_database_mode" {
  description = "Map of database_mode values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no database_mode are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.database_mode if v.database_mode != null && length(v.database_mode) > 0 }
}
output "mysql_mysql_db_systems_defined_tags" {
  description = "Map of defined_tags values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no defined_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "mysql_mysql_db_systems_deletion_policy" {
  description = "Map of deletion_policy values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no deletion_policy are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "mysql_mysql_db_systems_description" {
  description = "Map of description values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no description are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mysql_mysql_db_systems_display_name" {
  description = "Map of display_name values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no display_name are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "mysql_mysql_db_systems_encrypt_data" {
  description = "Map of encrypt_data values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no encrypt_data are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.encrypt_data) if v.encrypt_data != null && length(v.encrypt_data) > 0 }
}
output "mysql_mysql_db_systems_endpoints" {
  description = "Map of endpoints values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no endpoints are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "mysql_mysql_db_systems_fault_domain" {
  description = "Map of fault_domain values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no fault_domain are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.fault_domain if v.fault_domain != null && length(v.fault_domain) > 0 }
}
output "mysql_mysql_db_systems_freeform_tags" {
  description = "Map of freeform_tags values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "mysql_mysql_db_systems_heat_wave_cluster" {
  description = "Map of heat_wave_cluster values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no heat_wave_cluster are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.heat_wave_cluster if v.heat_wave_cluster != null && length(v.heat_wave_cluster) > 0 }
}
output "mysql_mysql_db_systems_hostname_label" {
  description = "Map of hostname_label values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no hostname_label are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.hostname_label if v.hostname_label != null && length(v.hostname_label) > 0 }
}
output "mysql_mysql_db_systems_ip_address" {
  description = "Map of ip_address values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no ip_address are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "mysql_mysql_db_systems_ipv6address_ipv6subnet_cidr_pair_details" {
  description = "Map of ipv6address_ipv6subnet_cidr_pair_details values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no ipv6address_ipv6subnet_cidr_pair_details are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.ipv6address_ipv6subnet_cidr_pair_details) if v.ipv6address_ipv6subnet_cidr_pair_details != null && length(v.ipv6address_ipv6subnet_cidr_pair_details) > 0 }
}
output "mysql_mysql_db_systems_is_heat_wave_cluster_attached" {
  description = "Map of is_heat_wave_cluster_attached values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no is_heat_wave_cluster_attached are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.is_heat_wave_cluster_attached if v.is_heat_wave_cluster_attached != null }
}
output "mysql_mysql_db_systems_is_highly_available" {
  description = "Map of is_highly_available values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no is_highly_available are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.is_highly_available if v.is_highly_available != null }
}
output "mysql_mysql_db_systems_is_ipv6enabled" {
  description = "Map of is_ipv6enabled values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no is_ipv6enabled are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.is_ipv6enabled if v.is_ipv6enabled != null }
}
output "mysql_mysql_db_systems_lifecycle_details" {
  description = "Map of lifecycle_details values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "mysql_mysql_db_systems_maintenance" {
  description = "Map of maintenance values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no maintenance are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.maintenance) if v.maintenance != null && length(v.maintenance) > 0 }
}
output "mysql_mysql_db_systems_mysql_version" {
  description = "Map of mysql_version values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no mysql_version are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.mysql_version if v.mysql_version != null && length(v.mysql_version) > 0 }
}
output "mysql_mysql_db_systems_nsg_ids" {
  description = "Map of nsg_ids values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "mysql_mysql_db_systems_point_in_time_recovery_details" {
  description = "Map of point_in_time_recovery_details values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no point_in_time_recovery_details are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.point_in_time_recovery_details if v.point_in_time_recovery_details != null && length(v.point_in_time_recovery_details) > 0 }
}
output "mysql_mysql_db_systems_port" {
  description = "Map of port values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no port are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.port if v.port != null }
}
output "mysql_mysql_db_systems_port_x" {
  description = "Map of port_x values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no port_x are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.port_x if v.port_x != null }
}
output "mysql_mysql_db_systems_read_endpoint" {
  description = "Map of read_endpoint values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no read_endpoint are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.read_endpoint) if v.read_endpoint != null && length(v.read_endpoint) > 0 }
}
output "mysql_mysql_db_systems_rest" {
  description = "Map of rest values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no rest are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.rest) if v.rest != null && length(v.rest) > 0 }
}
output "mysql_mysql_db_systems_secure_connections" {
  description = "Map of secure_connections values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no secure_connections are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.secure_connections) if v.secure_connections != null && length(v.secure_connections) > 0 }
}
output "mysql_mysql_db_systems_security_attributes" {
  description = "Map of security_attributes values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no security_attributes are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "mysql_mysql_db_systems_shape_name" {
  description = "Map of shape_name values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no shape_name are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}
output "mysql_mysql_db_systems_shutdown_type" {
  description = "Map of shutdown_type values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no shutdown_type are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.shutdown_type if v.shutdown_type != null && length(v.shutdown_type) > 0 }
}
output "mysql_mysql_db_systems_source" {
  description = "Map of source values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no source are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.source) if v.source != null && length(v.source) > 0 }
  sensitive   = true
}
output "mysql_mysql_db_systems_state" {
  description = "Map of state values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no state are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mysql_mysql_db_systems_subnet_id" {
  description = "Map of subnet_id values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no subnet_id are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "mysql_mysql_db_systems_system_tags" {
  description = "Map of system_tags values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no system_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "mysql_mysql_db_systems_telemetry_configuration" {
  description = "Map of telemetry_configuration values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no telemetry_configuration are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => one(v.telemetry_configuration) if v.telemetry_configuration != null && length(v.telemetry_configuration) > 0 }
}
output "mysql_mysql_db_systems_time_created" {
  description = "Map of time_created values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no time_created are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "mysql_mysql_db_systems_time_updated" {
  description = "Map of time_updated values across all mysql_mysql_db_systems, keyed the same as var.mysql_mysql_db_systems except keys with no time_updated are omitted"
  value       = { for k, v in oci_mysql_mysql_db_system.mysql_mysql_db_systems : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

