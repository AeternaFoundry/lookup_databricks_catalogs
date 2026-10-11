variable "catalogs_lookup" {
  description = <<EOT
Map of catalogs_lookup, attributes below
Optional:
    - ids
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    ids = optional(set(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

