variable "lustre_file_storage_object_storage_links_lookup" {
  description = <<EOT
Map of lustre_file_storage_object_storage_links_lookup, attributes below
Optional:
    - availability_domain
    - compartment_id
    - display_name
    - lustre_file_system_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    availability_domain   = optional(string)
    compartment_id        = optional(string)
    display_name          = optional(string)
    lustre_file_system_id = optional(string)
    state                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

