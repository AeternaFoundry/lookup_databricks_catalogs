data "databricks_catalogs" "catalogs_lookup" {
  for_each = var.catalogs_lookup

  ids = each.value.ids

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

