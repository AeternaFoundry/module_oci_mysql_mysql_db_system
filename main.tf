resource "oci_mysql_mysql_db_system" "mysql_mysql_db_systems" {
  for_each = var.mysql_mysql_db_systems

  availability_domain     = each.value.availability_domain
  compartment_id          = each.value.compartment_id
  shape_name              = each.value.shape_name
  subnet_id               = each.value.subnet_id
  access_mode             = each.value.access_mode
  admin_password          = each.value.admin_password
  admin_username          = each.value.admin_username
  configuration_id        = each.value.configuration_id
  crash_recovery          = each.value.crash_recovery
  data_storage_size_in_gb = each.value.data_storage_size_in_gb
  database_management     = each.value.database_management
  database_mode           = each.value.database_mode
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  display_name            = each.value.display_name
  fault_domain            = each.value.fault_domain
  freeform_tags           = each.value.freeform_tags
  hostname_label          = each.value.hostname_label
  ip_address              = each.value.ip_address
  is_highly_available     = each.value.is_highly_available
  is_ipv6enabled          = each.value.is_ipv6enabled
  mysql_version           = each.value.mysql_version
  nsg_ids                 = each.value.nsg_ids
  port                    = each.value.port
  port_x                  = each.value.port_x
  security_attributes     = each.value.security_attributes
  shutdown_type           = each.value.shutdown_type
  state                   = each.value.state

  dynamic "backup_policy" {
    for_each = each.value.backup_policy != null ? [each.value.backup_policy] : []
    content {
      dynamic "copy_policies" {
        for_each = backup_policy.value.copy_policies != null ? backup_policy.value.copy_policies : []
        content {
          backup_copy_retention_in_days = copy_policies.value.backup_copy_retention_in_days
          copy_to_region                = copy_policies.value.copy_to_region
        }
      }
      defined_tags  = backup_policy.value.defined_tags
      freeform_tags = backup_policy.value.freeform_tags
      is_enabled    = backup_policy.value.is_enabled
      dynamic "pitr_policy" {
        for_each = backup_policy.value.pitr_policy != null ? [backup_policy.value.pitr_policy] : []
        content {
          is_enabled = pitr_policy.value.is_enabled
        }
      }
      retention_in_days = backup_policy.value.retention_in_days
      soft_delete       = backup_policy.value.soft_delete
      window_start_time = backup_policy.value.window_start_time
    }
  }

  dynamic "customer_contacts" {
    for_each = each.value.customer_contacts != null ? each.value.customer_contacts : []
    content {
      email = customer_contacts.value.email
    }
  }

  dynamic "data_storage" {
    for_each = each.value.data_storage != null ? [each.value.data_storage] : []
    content {
      is_auto_expand_storage_enabled = data_storage.value.is_auto_expand_storage_enabled
      max_storage_size_in_gbs        = data_storage.value.max_storage_size_in_gbs
    }
  }

  dynamic "database_console" {
    for_each = each.value.database_console != null ? [each.value.database_console] : []
    content {
      port   = database_console.value.port
      status = database_console.value.status
    }
  }

  dynamic "deletion_policy" {
    for_each = each.value.deletion_policy != null ? each.value.deletion_policy : []
    content {
      automatic_backup_retention = deletion_policy.value.automatic_backup_retention
      final_backup               = deletion_policy.value.final_backup
      is_delete_protected        = deletion_policy.value.is_delete_protected
    }
  }

  dynamic "encrypt_data" {
    for_each = each.value.encrypt_data != null ? [each.value.encrypt_data] : []
    content {
      key_generation_type = encrypt_data.value.key_generation_type
      key_id              = encrypt_data.value.key_id
    }
  }

  dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
    for_each = each.value.ipv6address_ipv6subnet_cidr_pair_details != null ? [each.value.ipv6address_ipv6subnet_cidr_pair_details] : []
    content {
      ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
      ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
    }
  }

  dynamic "maintenance" {
    for_each = each.value.maintenance != null ? [each.value.maintenance] : []
    content {
      dynamic "maintenance_disabled_windows" {
        for_each = maintenance.value.maintenance_disabled_windows != null ? maintenance.value.maintenance_disabled_windows : []
        content {
          time_end   = maintenance_disabled_windows.value.time_end
          time_start = maintenance_disabled_windows.value.time_start
        }
      }
      maintenance_schedule_type = maintenance.value.maintenance_schedule_type
      version_preference        = maintenance.value.version_preference
      version_track_preference  = maintenance.value.version_track_preference
      window_start_time         = maintenance.value.window_start_time
    }
  }

  dynamic "read_endpoint" {
    for_each = each.value.read_endpoint != null ? [each.value.read_endpoint] : []
    content {
      exclude_ips                  = read_endpoint.value.exclude_ips
      is_enabled                   = read_endpoint.value.is_enabled
      read_endpoint_hostname_label = read_endpoint.value.read_endpoint_hostname_label
      read_endpoint_ip_address     = read_endpoint.value.read_endpoint_ip_address
      dynamic "read_endpoint_ipv6address_ipv6subnet_cidr_pair_details" {
        for_each = read_endpoint.value.read_endpoint_ipv6address_ipv6subnet_cidr_pair_details != null ? [read_endpoint.value.read_endpoint_ipv6address_ipv6subnet_cidr_pair_details] : []
        content {
          ipv6address     = read_endpoint_ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
          ipv6subnet_cidr = read_endpoint_ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
        }
      }
    }
  }

  dynamic "rest" {
    for_each = each.value.rest != null ? [each.value.rest] : []
    content {
      configuration = rest.value.configuration
      port          = rest.value.port
    }
  }

  dynamic "secure_connections" {
    for_each = each.value.secure_connections != null ? [each.value.secure_connections] : []
    content {
      certificate_generation_type = secure_connections.value.certificate_generation_type
      certificate_id              = secure_connections.value.certificate_id
    }
  }

  dynamic "source" {
    for_each = each.value.source != null ? [each.value.source] : []
    content {
      backup_id = source.value.backup_id
      dynamic "channel" {
        for_each = source.value.channel != null ? [source.value.channel] : []
        content {
          applier_username = channel.value.applier_username
          source_password  = channel.value.source_password
          source_username  = channel.value.source_username
          dynamic "ssl_ca_certificate" {
            for_each = channel.value.ssl_ca_certificate != null ? [channel.value.ssl_ca_certificate] : []
            content {
              certificate_type = ssl_ca_certificate.value.certificate_type
              contents         = ssl_ca_certificate.value.contents
            }
          }
          ssl_mode = channel.value.ssl_mode
        }
      }
      db_system_id   = source.value.db_system_id
      recovery_point = source.value.recovery_point
      region         = source.value.region
      source_type    = source.value.source_type
      source_url     = source.value.source_url
    }
  }

  dynamic "telemetry_configuration" {
    for_each = each.value.telemetry_configuration != null ? [each.value.telemetry_configuration] : []
    content {
      dynamic "logs" {
        for_each = telemetry_configuration.value.logs != null ? telemetry_configuration.value.logs : []
        content {
          destination = logs.value.destination
          dynamic "destination_configurations" {
            for_each = logs.value.destination_configurations
            content {
              key   = destination_configurations.value.key
              value = destination_configurations.value.value
            }
          }
          log_types = logs.value.log_types
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

