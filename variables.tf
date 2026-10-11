variable "mysql_mysql_db_systems" {
  description = <<EOT
Map of mysql_mysql_db_systems, attributes below
Required:
    - availability_domain
    - compartment_id
    - shape_name
    - subnet_id
Optional:
    - access_mode
    - admin_password
    - admin_username
    - configuration_id
    - crash_recovery
    - data_storage_size_in_gb
    - database_management
    - database_mode
    - defined_tags
    - description
    - display_name
    - fault_domain
    - freeform_tags
    - hostname_label
    - ip_address
    - is_highly_available
    - is_ipv6enabled
    - mysql_version
    - nsg_ids
    - port
    - port_x
    - security_attributes
    - shutdown_type
    - state
    - backup_policy (block):
        - copy_policies (optional, block):
            - backup_copy_retention_in_days (optional)
            - copy_to_region (required)
        - defined_tags (optional)
        - freeform_tags (optional)
        - is_enabled (optional)
        - pitr_policy (optional, block):
            - is_enabled (optional)
        - retention_in_days (optional)
        - soft_delete (optional)
        - window_start_time (optional)
    - customer_contacts (block):
        - email (required)
    - data_storage (block):
        - is_auto_expand_storage_enabled (optional)
        - max_storage_size_in_gbs (optional)
    - database_console (block):
        - port (optional)
        - status (required)
    - deletion_policy (block):
        - automatic_backup_retention (optional)
        - final_backup (optional)
        - is_delete_protected (optional)
    - encrypt_data (block):
        - key_generation_type (required)
        - key_id (optional)
    - ipv6address_ipv6subnet_cidr_pair_details (block):
        - ipv6address (optional)
        - ipv6subnet_cidr (optional)
    - maintenance (block):
        - maintenance_disabled_windows (optional, block):
            - time_end (required)
            - time_start (required)
        - maintenance_schedule_type (optional)
        - version_preference (optional)
        - version_track_preference (optional)
        - window_start_time (required)
    - read_endpoint (block):
        - exclude_ips (optional)
        - is_enabled (optional)
        - read_endpoint_hostname_label (optional)
        - read_endpoint_ip_address (optional)
        - read_endpoint_ipv6address_ipv6subnet_cidr_pair_details (optional, block):
            - ipv6address (optional)
            - ipv6subnet_cidr (optional)
    - rest (block):
        - configuration (required)
        - port (optional)
    - secure_connections (block):
        - certificate_generation_type (required)
        - certificate_id (optional)
    - source (block):
        - backup_id (optional)
        - channel (optional, block):
            - applier_username (optional)
            - source_password (optional)
            - source_username (optional)
            - ssl_ca_certificate (optional, block):
                - certificate_type (required)
                - contents (required)
            - ssl_mode (optional)
        - db_system_id (optional)
        - recovery_point (optional)
        - region (optional)
        - source_type (required)
        - source_url (optional)
    - telemetry_configuration (block):
        - logs (optional, block):
            - destination (required)
            - destination_configurations (required, block):
                - key (required)
                - value (required)
            - log_types (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    availability_domain     = string
    compartment_id          = string
    shape_name              = string
    subnet_id               = string
    access_mode             = optional(string)
    admin_password          = optional(string)
    admin_username          = optional(string)
    configuration_id        = optional(string)
    crash_recovery          = optional(string)
    data_storage_size_in_gb = optional(number)
    database_management     = optional(string)
    database_mode           = optional(string)
    defined_tags            = optional(map(string))
    description             = optional(string)
    display_name            = optional(string)
    fault_domain            = optional(string)
    freeform_tags           = optional(map(string))
    hostname_label          = optional(string)
    ip_address              = optional(string)
    is_highly_available     = optional(bool)
    is_ipv6enabled          = optional(bool)
    mysql_version           = optional(string)
    nsg_ids                 = optional(set(string))
    port                    = optional(number)
    port_x                  = optional(number)
    security_attributes     = optional(map(string))
    shutdown_type           = optional(string)
    state                   = optional(string)
    backup_policy = optional(object({
      copy_policies = optional(list(object({
        backup_copy_retention_in_days = optional(number)
        copy_to_region                = string
      })))
      defined_tags  = optional(map(string))
      freeform_tags = optional(map(string))
      is_enabled    = optional(bool)
      pitr_policy = optional(object({
        is_enabled = optional(bool)
      }))
      retention_in_days = optional(number)
      soft_delete       = optional(string)
      window_start_time = optional(string)
    }))
    customer_contacts = optional(list(object({
      email = string
    })))
    data_storage = optional(object({
      is_auto_expand_storage_enabled = optional(bool)
      max_storage_size_in_gbs        = optional(number)
    }))
    database_console = optional(object({
      port   = optional(number)
      status = string
    }))
    deletion_policy = optional(list(object({
      automatic_backup_retention = optional(string)
      final_backup               = optional(string)
      is_delete_protected        = optional(bool)
    })))
    encrypt_data = optional(object({
      key_generation_type = string
      key_id              = optional(string)
    }))
    ipv6address_ipv6subnet_cidr_pair_details = optional(object({
      ipv6address     = optional(string)
      ipv6subnet_cidr = optional(string)
    }))
    maintenance = optional(object({
      maintenance_disabled_windows = optional(list(object({
        time_end   = string
        time_start = string
      })))
      maintenance_schedule_type = optional(string)
      version_preference        = optional(string)
      version_track_preference  = optional(string)
      window_start_time         = string
    }))
    read_endpoint = optional(object({
      exclude_ips                  = optional(list(string))
      is_enabled                   = optional(bool)
      read_endpoint_hostname_label = optional(string)
      read_endpoint_ip_address     = optional(string)
      read_endpoint_ipv6address_ipv6subnet_cidr_pair_details = optional(object({
        ipv6address     = optional(string)
        ipv6subnet_cidr = optional(string)
      }))
    }))
    rest = optional(object({
      configuration = string
      port          = optional(number)
    }))
    secure_connections = optional(object({
      certificate_generation_type = string
      certificate_id              = optional(string)
    }))
    source = optional(object({
      backup_id = optional(string)
      channel = optional(object({
        applier_username = optional(string)
        source_password  = optional(string)
        source_username  = optional(string)
        ssl_ca_certificate = optional(object({
          certificate_type = string
          contents         = string
        }))
        ssl_mode = optional(string)
      }))
      db_system_id   = optional(string)
      recovery_point = optional(string)
      region         = optional(string)
      source_type    = string
      source_url     = optional(string)
    }))
    telemetry_configuration = optional(object({
      logs = optional(list(object({
        destination = string
        destination_configurations = list(object({
          key   = string
          value = string
        }))
        log_types = list(string)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_mysql_db_systems : (
        v.telemetry_configuration == null || (v.telemetry_configuration.logs == null || alltrue([for item in v.telemetry_configuration.logs : (length(item.destination_configurations) >= 1)]))
      )
    ])
    error_message = "Each destination_configurations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_mysql_db_systems : (
        v.source == null || (contains([for v in ["BACKUP", "DBSYSTEM", "IMPORTURL", "NONE", "PITR"] : lower(v)], lower(v.source.source_type)))
      )
    ])
    error_message = "must be one of: \"BACKUP\", \"DBSYSTEM\", \"IMPORTURL\", \"NONE\", \"PITR\""
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_mysql_db_systems : (
        v.source == null || (v.source.channel == null || (v.source.channel.ssl_ca_certificate == null || (contains([for v in ["PEM"] : lower(v)], lower(v.source.channel.ssl_ca_certificate.certificate_type)))))
      )
    ])
    error_message = "must be one of: \"PEM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_mysql_db_systems : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_mysql_db_systems : (
        v.shutdown_type == null || (contains([for v in ["FAST", "IMMEDIATE", "SLOW"] : lower(v)], lower(v.shutdown_type)))
      )
    ])
    error_message = "must be one of: \"FAST\", \"IMMEDIATE\", \"SLOW\""
  }
}

